# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateResponse < FinchAPI::Internal::Type::BaseModel
        # The date of the payment.
        sig { returns(String) }
        attr_accessor :pay_date

        # The ID of the payment.
        sig { returns(String) }
        attr_accessor :payment_id

        sig { params(pay_date: String, payment_id: String).returns(T.attached_class) }
        def self.new(pay_date:, payment_id:); end

        sig { override.returns({pay_date: String, payment_id: String}) }
        def to_hash; end
      end
    end
  end
end
