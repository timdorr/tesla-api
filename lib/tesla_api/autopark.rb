module TeslaApi
  module Autopark
    def start_autopark(&handler)
      Async do |task|
        Async::WebSocket::Client.connect(autopark_endpoint, headers: headers) do |connection|
          while (message = connection.read)
            case message[:msg_type]
            when "control:hello"
              interval = message[:autopark][:heartbeat_frequency] / 1000.0
              task.async do |subtask|
                subtask.sleep interval
                connection.write({msg_type: "autopark:heartbeat_app", timestamp: Time.now.to_i}.to_json)
              end
            end

            handler.call(message)
          end
        end
      end
    end

    private

    def autopark_endpoint
      Async::HTTP::Endpoint.parse(autopark_endpoint_url)
    end

    def autopark_endpoint_url
      "wss://streaming.vn.teslamotors.com/connect/#{self["vehicle_id"]}"
    end

    def autopark_headers
      {
        "Authorization" => "Basic #{socket_auth}"
      }
    end

    def autopark_socket_auth
      Base64.strict_encode64("#{email}:#{self["tokens"].first}")
    end
  end
end
