# typed: strong

module FinchAPI
  module Models
    class BaseWebhookEvent < FinchAPI::Internal::Type::BaseModel
      # [DEPRECATED] Unique Finch ID of the employer account used to make this
      #   connection. Use `connection_id` instead to identify the connection associated
      #   with this event.
      sig { returns(String) }
      attr_accessor :account_id

      # [DEPRECATED] Unique Finch ID of the company for which data has been updated. Use
      #   `connection_id` instead to identify the connection associated with this event.
      sig { returns(String) }
      attr_accessor :company_id

      # Unique Finch ID of the connection associated with the webhook event.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      sig { params(account_id: String, company_id: String, connection_id: String).returns(T.attached_class) }
      def self.new(account_id:, company_id:, connection_id: nil); end

      sig { override.returns({account_id: String, company_id: String, connection_id: String}) }
      def to_hash; end
    end
  end
end
