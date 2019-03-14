# frozen_string_literal: true

module ExternalSync
  module Apis
    # Sync details related to Fitbit only.
    # Its good to have its own implementation as each watch API could vary in logic.
    class SamsungWatchAPI < ::ExternalSync::Base

      private

      def steps
        ENV.fetch('SAMSUNG_STEP_GET_API')
      end

      def run
        ENV.fetch('SAMSUNG_RUN_GET_API')
      end

      def heart_beat
        ENV.fetch('SAMSUNG_HEART_BEAT_GET_API')
      end

      def sleep_pattern
        ENV.fetch('SAMSUNG_SLEEP_PATTERN_GET_API')
      end

      def water_intake
        ENV.fetch('SAMSUNG_WATER_INTAKE_GET_API')
      end
    end
  end
end

