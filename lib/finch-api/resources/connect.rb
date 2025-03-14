# frozen_string_literal: true

module FinchAPI
  module Resources
    class Connect
      # @return [FinchAPI::Resources::Connect::Sessions]
      attr_reader :sessions

      # @param client [FinchAPI::Client]
      def initialize(client:)
        @client = client
        @sessions = FinchAPI::Resources::Connect::Sessions.new(client: client)
      end
    end
  end
end
