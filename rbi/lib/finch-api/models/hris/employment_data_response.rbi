# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentDataResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData)) }
        def body
        end

        sig do
          params(_: T.any(FinchAPI::Models::HRIS::EmploymentData, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::HRIS::EmploymentData, FinchAPI::Util::AnyHash))
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
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        sig do
          params(
            body: T.any(FinchAPI::Models::HRIS::EmploymentData, FinchAPI::Util::AnyHash),
            code: Integer,
            individual_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, code: nil, individual_id: nil)
        end

        sig { override.returns({body: FinchAPI::Models::HRIS::EmploymentData, code: Integer, individual_id: String}) }
        def to_hash
        end
      end
    end
  end
end
