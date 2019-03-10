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
        apple_watch:   ENV.fetch('APPLE_WATCH'),
        garmin_watch:  ENV.fetch('GARMIN_WATCH'),
        fitbit_watch:  ENV.fetch('FITBIT_WATCH'),
        samsung_watch: ENV.fetch('SAMSUNG_WATCH')
      }.freeze
    end

    def get; end
  end
end
