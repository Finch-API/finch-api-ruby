# typed: strong

module FinchAPI
  module Resources
    class Webhooks
      sig { params(client: FinchAPI::Client).void }
      def initialize(client:)
      end
    end
  end
end
