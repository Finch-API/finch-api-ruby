# typed: strong

module FinchAPI
  module Models
    class DisconnectResponse < FinchAPI::BaseModel
      # If the request is successful, Finch will return “success” (HTTP 200 status).
      sig { returns(String) }
      def status
      end

      sig { params(_: String).returns(String) }
      def status=(_)
      end

      sig { params(status: String).returns(T.attached_class) }
      def self.new(status:)
      end

      sig { override.returns({status: String}) }
      def to_hash
      end
    end
  end
end
