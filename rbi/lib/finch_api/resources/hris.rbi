# typed: strong

module FinchAPI
  module Resources
    class HRIS
      sig { returns(FinchAPI::Resources::HRIS::Company) }
      attr_reader :company

      sig { returns(FinchAPI::Resources::HRIS::Directory) }
      attr_reader :directory

      sig { returns(FinchAPI::Resources::HRIS::Individuals) }
      attr_reader :individuals

      sig { returns(FinchAPI::Resources::HRIS::Employments) }
      attr_reader :employments

      sig { returns(FinchAPI::Resources::HRIS::Payments) }
      attr_reader :payments

      sig { returns(FinchAPI::Resources::HRIS::PayStatements) }
      attr_reader :pay_statements

      sig { returns(FinchAPI::Resources::HRIS::Documents) }
      attr_reader :documents

      sig { returns(FinchAPI::Resources::HRIS::Benefits) }
      attr_reader :benefits

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
