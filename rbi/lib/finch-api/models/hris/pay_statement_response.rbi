# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatementResponseBody)) }
        def body
        end

        sig do
          params(_: FinchAPI::Models::HRIS::PayStatementResponseBody)
            .returns(FinchAPI::Models::HRIS::PayStatementResponseBody)
        end
        def body=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def code
        end

        sig { params(_: Integer).returns(Integer) }
        def code=(_)
        end

        sig { returns(T.nilable(String)) }
        def payment_id
        end

        sig { params(_: String).returns(String) }
        def payment_id=(_)
        end

        sig do
          params(body: FinchAPI::Models::HRIS::PayStatementResponseBody, code: Integer, payment_id: String)
            .returns(T.attached_class)
        end
        def self.new(body: nil, code: nil, payment_id: nil)
        end

        sig do
          override
            .returns({body: FinchAPI::Models::HRIS::PayStatementResponseBody, code: Integer, payment_id: String})
        end
        def to_hash
        end
      end
    end
  end
end
