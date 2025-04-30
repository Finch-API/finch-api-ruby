# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      # @see FinchAPI::Resources::Connect::Sessions#new
      class SessionNewResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute connect_url
        #   The Connect URL to redirect the user to for authentication
        #
        #   @return [String]
        required :connect_url, String

        # @!attribute session_id
        #   The unique identifier for the created connect session
        #
        #   @return [String]
        required :session_id, String

        # @!method initialize(connect_url:, session_id:)
        #   @param connect_url [String] The Connect URL to redirect the user to for authentication
        #
        #   @param session_id [String] The unique identifier for the created connect session
      end
    end
  end
end
