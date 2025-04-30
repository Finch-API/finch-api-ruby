# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionReauthenticateResponse < FinchAPI::Internal::Type::BaseModel
        # The Connect URL to redirect the user to for reauthentication
        sig { returns(String) }
        attr_accessor :connect_url

        # The unique identifier for the created connect session
        sig { returns(String) }
        attr_accessor :session_id

        sig { params(connect_url: String, session_id: String).returns(T.attached_class) }
        def self.new(
          # The Connect URL to redirect the user to for reauthentication
          connect_url:,
          # The unique identifier for the created connect session
          session_id:
        ); end
        sig { override.returns({connect_url: String, session_id: String}) }
        def to_hash; end
      end
    end
  end
end
