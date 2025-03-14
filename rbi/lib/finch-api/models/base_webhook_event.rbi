# typed: strong

module FinchAPI
  module Models
    class BaseWebhookEvent < FinchAPI::BaseModel
      # [DEPRECATED] Unique Finch ID of the employer account used to make this
      #   connection. Use `connection_id` instead to identify the connection associated
      #   with this event.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # [DEPRECATED] Unique Finch ID of the company for which data has been updated. Use
      #   `connection_id` instead to identify the connection associated with this event.
      sig { returns(String) }
      def company_id
      end

      sig { params(_: String).returns(String) }
      def company_id=(_)
      end

      # Unique Finch ID of the connection associated with the webhook event.
      sig { returns(T.nilable(String)) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { params(account_id: String, company_id: String, connection_id: String).returns(T.attached_class) }
      def self.new(account_id:, company_id:, connection_id: nil)
      end

      sig { override.returns({account_id: String, company_id: String, connection_id: String}) }
      def to_hash
      end
    end
  end
end
