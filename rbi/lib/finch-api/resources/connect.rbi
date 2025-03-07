# typed: strong

module FinchAPI
  module Resources
    class Connect
      sig { returns(FinchAPI::Resources::Connect::Sessions) }
      def sessions
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
