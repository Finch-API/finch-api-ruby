# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      class SessionReauthenticateResponse < FinchAPI::BaseModel
        # @!attribute connect_url
        #   The Connect URL to redirect the user to for reauthentication
        #
        #   @return [String]
        required :connect_url, String

        # @!attribute session_id
        #   The unique identifier for the created connect session
        #
        #   @return [String]
        required :session_id, String

        # @!parse
        #   # @param connect_url [String]
        #   # @param session_id [String]
        #   #
        #   def initialize(connect_url:, session_id:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
