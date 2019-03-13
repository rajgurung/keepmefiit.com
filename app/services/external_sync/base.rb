# frozen_string_literal: true

require 'virtus'

module ExternalSync
  # Responsible for base implementation for external sync across all devices
  #   like Fitbit, Apple Watch, Samsung, Garmin, etc
  class Base
    WHITE_LISTED_HTTP_METHOD = [:get].freeze

    include Virtus.model

    attribute :http_method,   Symbol
    attribute :smart_watch,   Symbol
    attribute :sync_interval, Integer

    def api
      {
        apple_watch_api_key:   ENV.fetch('APPLE_WATCH_API_KEY'),
        garmin_watch_api_key:  ENV.fetch('GARMIN_WATCH_API_KEY'),
        fitbit_watch_api_key:  ENV.fetch('FITBIT_WATCH_API_KEY'),
        samsung_watch_api_key: ENV.fetch('SAMSUNG_WATCH_API_KEY')
      }.freeze
    end

    def steps
      raise "construct on your concrete class, #{self.class}"
    end

    def run
      raise "construct on your concrete class, #{self.class}"
    end

    def heart_beat
      raise "construct on your concrete class, #{self.class}"
    end

    def sleep_pattern
      raise "construct on your concrete class, #{self.class}"
    end

    def water_intake
      raise "construct on your concrete class, #{self.class}"
    end
  end
end
