# frozen_string_literal: true

module FinchAPI
  module Resources
    class Jobs
      # @return [FinchAPI::Resources::Jobs::Automated]
      attr_reader :automated

      # @return [FinchAPI::Resources::Jobs::Manual]
      attr_reader :manual

      # @param client [FinchAPI::Client]
      #
      def initialize(client:)
        @client = client
        @automated = FinchAPI::Resources::Jobs::Automated.new(client: client)
        @manual = FinchAPI::Resources::Jobs::Manual.new(client: client)
      end
    end
  end
end
