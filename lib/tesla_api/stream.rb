module TeslaApi
  module Stream
    def stream(&receiver)
      EventMachine.run do
        http.stream do |chunk|
          attributes = chunk.split(",")

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

        http.callback { EventMachine.stop }
        http.errback { EventMachine.stop }
      end
    end

    private

    def request
      @request ||= EventMachine::HttpRequest.new(
          "#{stream_endpoint}/stream/#{self['vehicle_id']}/?values=#{stream_params}")
    end

    def http
      request.get(
          head: {
              'authorization' => [email, self['tokens'].first]
          },
          inactivity_timeout: 15)
    end

    def stream_endpoint
      'https://streaming.vn.teslamotors.com'
    end

    def stream_params
      'speed,odometer,soc,elevation,est_heading,est_lat,est_lng,power,shift_state,range,est_range,heading'
    end
  end
end
