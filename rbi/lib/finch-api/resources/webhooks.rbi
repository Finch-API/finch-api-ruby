# typed: strong

module FinchAPI
  module Resources
    class Webhooks
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
