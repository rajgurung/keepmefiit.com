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
        apple_watch_api:   ENV.fetch('APPLE_WATCH_API'),
        garmin_watch_api:  ENV.fetch('GARMIN_WATCH_API'),
        fitbit_watch_api:  ENV.fetch('FITBIT_WATCH_API'),
        samsung_watch_api: ENV.fetch('SAMSUNG_WATCH_API')
      }.freeze
    end

    def get; end
  end
end
