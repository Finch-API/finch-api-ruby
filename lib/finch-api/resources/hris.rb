# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      # @return [FinchAPI::Resources::HRIS::Company]
      attr_reader :company

      # @return [FinchAPI::Resources::HRIS::Directory]
      attr_reader :directory

      # @return [FinchAPI::Resources::HRIS::Individuals]
      attr_reader :individuals

      # @return [FinchAPI::Resources::HRIS::Employments]
      attr_reader :employments

      # @return [FinchAPI::Resources::HRIS::Payments]
      attr_reader :payments

      # @return [FinchAPI::Resources::HRIS::PayStatements]
      attr_reader :pay_statements

      # @return [FinchAPI::Resources::HRIS::Documents]
      attr_reader :documents

      # @return [FinchAPI::Resources::HRIS::Benefits]
      attr_reader :benefits

      # @param client [FinchAPI::Client]
      def initialize(client:)
        @client = client
        @company = FinchAPI::Resources::HRIS::Company.new(client: client)
        @directory = FinchAPI::Resources::HRIS::Directory.new(client: client)
        @individuals = FinchAPI::Resources::HRIS::Individuals.new(client: client)
        @employments = FinchAPI::Resources::HRIS::Employments.new(client: client)
        @payments = FinchAPI::Resources::HRIS::Payments.new(client: client)
        @pay_statements = FinchAPI::Resources::HRIS::PayStatements.new(client: client)
        @documents = FinchAPI::Resources::HRIS::Documents.new(client: client)
        @benefits = FinchAPI::Resources::HRIS::Benefits.new(client: client)
      end
    end
  end
end
