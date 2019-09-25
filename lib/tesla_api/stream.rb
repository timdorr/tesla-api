module TeslaApi
  module Stream
    def stream(&receiver)
      EventMachine.run do
        socket = create_streaming_socket

        socket.on(:open) do |event|
          socket.send(JSON.generate(stream_connect_message))
        end

        socket.on(:message) do |event|
          data = JSON.parse(event.data.pack('c*'))

          if data['msg_type'] == 'data:update'
            attributes = data['value'].split(',')

            receiver.call({
              time: DateTime.strptime((attributes[0].to_i/1000).to_s, '%s'),
              speed: attributes[1].to_f,
              odometer: attributes[2].to_f,
              soc: attributes[3].to_f,
              elevation: attributes[4].to_f,
              est_heading: attributes[5].to_f,
              est_lat: attributes[6].to_f,
              est_lng: attributes[7].to_f,
              power: attributes[8].to_f,
              shift_state: attributes[9].to_s,
              range: attributes[10].to_f,
              est_range: attributes[11].to_f,
              heading: attributes[12].to_f
            })
          end
        end

        socket.on(:close) do |event|
          EventMachine.stop
        end
      end
    end

    private

    def create_streaming_socket
      Faye::WebSocket::Client.new(streaming_endpoint)
    end

    def streaming_endpoint
      'wss://streaming.vn.teslamotors.com/streaming/'
    end

    def stream_connect_message
      {
        msg_type: 'data:subscribe',
        token: Base64.strict_encode64("#{email}:#{self['tokens'].first}"),
        value: 'speed,odometer,soc,elevation,est_heading,est_lat,est_lng,power,shift_state,range,est_range,heading',
        tag: self['vehicle_id'].to_s,
      }
    end
  end
end
