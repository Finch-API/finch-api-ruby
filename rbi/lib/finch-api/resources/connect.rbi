# typed: strong

module FinchAPI
  module Resources
    class Connect
      sig { returns(FinchAPI::Resources::Connect::Sessions) }
      def sessions
      end

      sig { params(client: FinchAPI::Client).void }
      def initialize(client:)
      end
    end
  end
end
