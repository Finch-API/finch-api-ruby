# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Account#disconnect
    class DisconnectResponse < FinchAPI::Internal::Type::BaseModel
      # @!attribute status
      #   If the request is successful, Finch will return “success” (HTTP 200 status).
      #
      #   @return [String]
      required :status, String

      # @!parse
      #   # @param status [String]
      #   #
      #   def initialize(status:, **) = super

      # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
    end
  end
end
