# typed: strong

module FinchAPI
  module Resources
    class Payroll
      sig { returns(FinchAPI::Resources::Payroll::PayGroups) }
      def pay_groups
      end

      sig { params(client: FinchAPI::Client).void }
      def initialize(client:)
      end
    end
  end
end
