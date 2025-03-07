# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateResponse < FinchAPI::BaseModel
        sig { returns(String) }
        def pay_date
        end

        sig { params(_: String).returns(String) }
        def pay_date=(_)
        end

        sig { returns(String) }
        def payment_id
        end

        sig { params(_: String).returns(String) }
        def payment_id=(_)
        end

        sig { params(pay_date: String, payment_id: String).returns(T.attached_class) }
        def self.new(pay_date:, payment_id:)
        end

        sig { override.returns({pay_date: String, payment_id: String}) }
        def to_hash
        end
      end
    end
  end
end
