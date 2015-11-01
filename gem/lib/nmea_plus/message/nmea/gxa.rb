require_relative "base_nmea"

module NMEAPlus
  module Message
    module NMEA
      class GXA < NMEAPlus::Message::NMEA::NMEAMessage

        field_reader :fix_time, 1, :_utctime_hms
        def latitude
          _degrees_minutes_to_decimal(@fields[2], @fields[3])
        end

        def longitude
          _degrees_minutes_to_decimal(@fields[4], @fields[5])
        end

        field_reader :waypoint_id, 6, :_integer
        field_reader :satellite, 7, :_integer
      end
    end
  end
end