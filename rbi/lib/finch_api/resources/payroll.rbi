# typed: strong

module FinchAPI
  module Resources
    class Payroll
      sig { returns(FinchAPI::Resources::Payroll::PayGroups) }
      attr_reader :pay_groups

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
