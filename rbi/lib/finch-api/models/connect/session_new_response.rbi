# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionNewResponse < FinchAPI::BaseModel
        sig { returns(String) }
        def connect_url
        end

        sig { params(_: String).returns(String) }
        def connect_url=(_)
        end

        sig { returns(String) }
        def session_id
        end

        sig { params(_: String).returns(String) }
        def session_id=(_)
        end

        sig { params(connect_url: String, session_id: String).returns(T.attached_class) }
        def self.new(connect_url:, session_id:)
        end

        sig { override.returns({connect_url: String, session_id: String}) }
        def to_hash
        end
      end
    end
  end
end
