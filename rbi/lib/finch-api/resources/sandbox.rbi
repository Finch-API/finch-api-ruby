# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      sig { returns(FinchAPI::Resources::Sandbox::Connections) }
      def connections
      end

      sig { returns(FinchAPI::Resources::Sandbox::Company) }
      def company
      end

      sig { returns(FinchAPI::Resources::Sandbox::Directory) }
      def directory
      end

      sig { returns(FinchAPI::Resources::Sandbox::Individual) }
      def individual
      end

      sig { returns(FinchAPI::Resources::Sandbox::Employment) }
      def employment
      end

      sig { returns(FinchAPI::Resources::Sandbox::Payment) }
      def payment
      end

      sig { returns(FinchAPI::Resources::Sandbox::Jobs) }
      def jobs
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
