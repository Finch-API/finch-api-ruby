# typed: strong

module FinchAPI
  module Resources
    class HRIS
      sig { returns(FinchAPI::Resources::HRIS::Company) }
      def company
      end

      sig { returns(FinchAPI::Resources::HRIS::Directory) }
      def directory
      end

      sig { returns(FinchAPI::Resources::HRIS::Individuals) }
      def individuals
      end

      sig { returns(FinchAPI::Resources::HRIS::Employments) }
      def employments
      end

      sig { returns(FinchAPI::Resources::HRIS::Payments) }
      def payments
      end

      sig { returns(FinchAPI::Resources::HRIS::PayStatements) }
      def pay_statements
      end

      sig { returns(FinchAPI::Resources::HRIS::Documents) }
      def documents
      end

      sig { returns(FinchAPI::Resources::HRIS::Benefits) }
      def benefits
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
