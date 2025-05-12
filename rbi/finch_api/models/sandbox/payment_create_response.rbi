# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::Sandbox::PaymentCreateResponse,
              FinchAPI::Internal::AnyHash
            )
          end

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
