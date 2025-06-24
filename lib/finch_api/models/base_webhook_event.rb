# frozen_string_literal: true

module FinchAPI
  module Models
    class BaseWebhookEvent < FinchAPI::Internal::Type::BaseModel
      # @!attribute account_id
      #   @deprecated
      #
      #   [DEPRECATED] Unique Finch ID of the employer account used to make this
      #   connection. Use `connection_id` instead to identify the connection associated
      #   with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute company_id
      #   @deprecated
      #
      #   [DEPRECATED] Unique Finch ID of the company for which data has been updated. Use
      #   `connection_id` instead to identify the connection associated with this event.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute connection_id
      #   Unique Finch ID of the connection associated with the webhook event.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!method initialize(account_id:, company_id:, connection_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::BaseWebhookEvent} for more details.
      #
      #   @param account_id [String] [DEPRECATED] Unique Finch ID of the employer account used to make this connectio
      #
      #   @param company_id [String] [DEPRECATED] Unique Finch ID of the company for which data has been updated. Use
      #
      #   @param connection_id [String] Unique Finch ID of the connection associated with the webhook event.
    end
  end
end
