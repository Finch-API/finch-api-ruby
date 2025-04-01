# frozen_string_literal: true

module FinchAPI
  module Resources
    class Webhooks
      # @api private
      #
      # @param client [FinchAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
