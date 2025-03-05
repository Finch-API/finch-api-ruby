# typed: strong

module FinchAPI
  module Models
    class BaseWebhookEvent < FinchAPI::BaseModel
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def company_id
      end

      sig { params(_: String).returns(String) }
      def company_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { params(account_id: String, company_id: String, connection_id: String).void }
      def initialize(account_id:, company_id:, connection_id: nil)
      end

      sig { override.returns({account_id: String, company_id: String, connection_id: String}) }
      def to_hash
      end
    end
  end
end
