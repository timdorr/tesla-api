module TeslaApi
  module Autopark
    def start_autopark(&handler)
      EventMachine.run do
        autopark_socket.on(:message) do |event|
          message = if event.data.is_a?(Array)
            JSON.parse(event.data.map(&:chr).join)
          else
            JSON.parse(event.data)
          end

          default_handler(message)
          handler.call(message.delete('msg_type'), message)
        end

        autopark_socket.on(:close) do |_|
          @autopark_socket = nil
          @heartbeat && @heartbeat.cancel
          EventMachine.stop
        end
      end
    end

    private

    def default_handler(message)
      case message['msg_type']
        when 'control:hello'
          interval = message['autopark']['heartbeat_frequency'] / 1000.0
          @heartbeat = EventMachine::Timer.new(interval) do
            beat = {
                msg_type: 'autopark:heartbeat_app',
                timestamp: Time.now.to_i
            }
            autopark_socket.send(beat.to_json)
          end
      end
    end

    def autopark_socket
      @autopark_socket ||= Faye::WebSocket::Client.new(
          autopark_socket_endpoint,
          nil,
          {
              headers: {
                  'Authorization' => "Basic #{socket_auth}"
              }
          }
      )
    end

    def socket_auth
      Base64.strict_encode64("#{email}:#{self['tokens'].first}")
    end

    def autopark_socket_endpoint
      "wss://streaming.vn.teslamotors.com/connect/#{self['vehicle_id']}"
    end
  end
end
