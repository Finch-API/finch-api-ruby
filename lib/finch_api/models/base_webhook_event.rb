# frozen_string_literal: true

module FinchAPI
  module Models
    class BaseWebhookEvent < FinchAPI::BaseModel
      # @!attribute account_id
      #   [DEPRECATED] Unique Finch ID of the employer account used to make this
      #     connection. Use `connection_id` instead to identify the connection associated
      #     with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute company_id
      #   [DEPRECATED] Unique Finch ID of the company for which data has been updated. Use
      #     `connection_id` instead to identify the connection associated with this event.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute [r] connection_id
      #   Unique Finch ID of the connection associated with the webhook event.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :connection_id

      # @!parse
      #   # @param account_id [String]
      #   # @param company_id [String]
      #   # @param connection_id [String]
      #   #
      #   def initialize(account_id:, company_id:, connection_id: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void
    end
  end
end
