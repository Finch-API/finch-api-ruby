# typed: strong

module FinchAPI
  module Models
    class DisconnectResponse < FinchAPI::BaseModel
      sig { returns(String) }
      def status
      end

      sig { params(_: String).returns(String) }
      def status=(_)
      end

      sig { params(status: String).void }
      def initialize(status:)
      end

      sig { override.returns({status: String}) }
      def to_hash
      end
    end
  end
end
