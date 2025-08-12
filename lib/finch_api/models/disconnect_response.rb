# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Account#disconnect
    class DisconnectResponse < FinchAPI::Internal::Type::BaseModel
      # @!attribute status
      #   If the request is successful, Finch will return "success" (HTTP 200 status).
      #
      #   @return [String]
      required :status, String

      # @!method initialize(status:)
      #   @param status [String] If the request is successful, Finch will return "success" (HTTP 200 status).
    end
  end
end
