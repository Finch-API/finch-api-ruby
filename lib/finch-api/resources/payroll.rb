# frozen_string_literal: true

module FinchAPI
  module Resources
    class Payroll
      # @return [FinchAPI::Resources::Payroll::PayGroups]
      attr_reader :pay_groups

      # @param client [FinchAPI::Client]
      #
      def initialize(client:)
        @client = client
        @pay_groups = FinchAPI::Resources::Payroll::PayGroups.new(client: client)
      end
    end
  end
end
