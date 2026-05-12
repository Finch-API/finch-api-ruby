# typed: strong

module FinchAPI
  module Models
    class DisconnectEntityResponse < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(FinchAPI::DisconnectEntityResponse, FinchAPI::Internal::AnyHash)
        end

      # If the request is successful, Finch will return "success" (HTTP 200 status).
      sig { returns(String) }
      attr_accessor :status

      sig { params(status: String).returns(T.attached_class) }
      def self.new(
        # If the request is successful, Finch will return "success" (HTTP 200 status).
        status:
      )
      end

      sig { override.returns({ status: String }) }
      def to_hash
      end
    end
  end
end
