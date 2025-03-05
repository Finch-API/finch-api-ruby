# frozen_string_literal: true

module FinchAPI
  module Resources
    class Webhooks
      # @param client [FinchAPI::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
