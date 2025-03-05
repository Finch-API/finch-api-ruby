# typed: strong

module FinchAPI
  module Resources
    class Jobs
      sig { returns(FinchAPI::Resources::Jobs::Automated) }
      def automated
      end

      sig { returns(FinchAPI::Resources::Jobs::Manual) }
      def manual
      end

      sig { params(client: FinchAPI::Client).void }
      def initialize(client:)
      end
    end
  end
end
