# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionReauthenticateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::Connect::SessionReauthenticateResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        # The Connect URL to redirect the user to for reauthentication
        sig { returns(String) }
        attr_accessor :connect_url

        # The unique identifier for the created connect session
        sig { returns(String) }
        attr_accessor :session_id

        sig do
          params(connect_url: String, session_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The Connect URL to redirect the user to for reauthentication
          connect_url:,
          # The unique identifier for the created connect session
          session_id:
        )
        end

        sig { override.returns({ connect_url: String, session_id: String }) }
        def to_hash
        end
      end
    end
  end
end
