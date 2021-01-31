module TeslaApi
  module Stream
    def self.streaming_endpoint_url
      "wss://streaming.vn.teslamotors.com/streaming/"
    end

    def self.streaming_endpoint
      Async::HTTP::Endpoint.parse(streaming_endpoint_url, alpn_protocols: Async::HTTP::Protocol::HTTP11.names)
    end

    def stream(endpoint: Stream.streaming_endpoint, &receiver)
      Async do |task|
        Async::WebSocket::Client.connect(endpoint) do |connection|
          on_timeout = ->(subtask) do
            subtask.sleep TIMEOUT
            task.stop
          end

          connection.write(streaming_connect_message)
          timeout = task.async(&on_timeout)

          while (message = connection.read)
            timeout.stop
            timeout = task.async(&on_timeout)

            case message[:msg_type]
            when "data:update"
              attributes = message[:value].split(",")

              receiver.call({
                time: DateTime.strptime((attributes[0].to_i / 1000).to_s, "%s"),
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
            when "data:error"
              task.stop
            end
          end
        end
      end
    end

    private

    TIMEOUT = 30

    def streaming_connect_message
      {
        msg_type: "data:subscribe_oauth",
        token: client.access_token,
        value: "speed,odometer,soc,elevation,est_heading,est_lat,est_lng,power,shift_state,range,est_range,heading",
        tag: self["vehicle_id"].to_s
      }
    end
  end
end
