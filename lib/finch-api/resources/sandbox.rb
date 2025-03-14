# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      # @return [FinchAPI::Resources::Sandbox::Connections]
      attr_reader :connections

      # @return [FinchAPI::Resources::Sandbox::Company]
      attr_reader :company

      # @return [FinchAPI::Resources::Sandbox::Directory]
      attr_reader :directory

      # @return [FinchAPI::Resources::Sandbox::Individual]
      attr_reader :individual

      # @return [FinchAPI::Resources::Sandbox::Employment]
      attr_reader :employment

      # @return [FinchAPI::Resources::Sandbox::Payment]
      attr_reader :payment

      # @return [FinchAPI::Resources::Sandbox::Jobs]
      attr_reader :jobs

      # @param client [FinchAPI::Client]
      def initialize(client:)
        @client = client
        @connections = FinchAPI::Resources::Sandbox::Connections.new(client: client)
        @company = FinchAPI::Resources::Sandbox::Company.new(client: client)
        @directory = FinchAPI::Resources::Sandbox::Directory.new(client: client)
        @individual = FinchAPI::Resources::Sandbox::Individual.new(client: client)
        @employment = FinchAPI::Resources::Sandbox::Employment.new(client: client)
        @payment = FinchAPI::Resources::Sandbox::Payment.new(client: client)
        @jobs = FinchAPI::Resources::Sandbox::Jobs.new(client: client)
      end
    end
  end
end
