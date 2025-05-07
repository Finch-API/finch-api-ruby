# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The date of the payment.
        sig { returns(String) }
        attr_accessor :pay_date

        # The ID of the payment.
        sig { returns(String) }
        attr_accessor :payment_id

        sig do
          params(pay_date: String, payment_id: String).returns(T.attached_class)
        end
        def self.new(
          # The date of the payment.
          pay_date:,
          # The ID of the payment.
          payment_id:
        )
        end

        sig { override.returns({ pay_date: String, payment_id: String }) }
        def to_hash
        end
      end
    end
  end
end
