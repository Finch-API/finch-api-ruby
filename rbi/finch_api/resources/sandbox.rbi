# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      sig { returns(FinchAPI::Resources::Sandbox::Connections) }
      attr_reader :connections

      sig { returns(FinchAPI::Resources::Sandbox::Company) }
      attr_reader :company

      sig { returns(FinchAPI::Resources::Sandbox::Directory) }
      attr_reader :directory

      sig { returns(FinchAPI::Resources::Sandbox::Individual) }
      attr_reader :individual

      sig { returns(FinchAPI::Resources::Sandbox::Employment) }
      attr_reader :employment

      sig { returns(FinchAPI::Resources::Sandbox::Payment) }
      attr_reader :payment

      sig { returns(FinchAPI::Resources::Sandbox::Jobs) }
      attr_reader :jobs

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
