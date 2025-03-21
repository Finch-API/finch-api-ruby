# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual)) }
        def body
        end

        sig do
          params(_: T.any(FinchAPI::Models::HRIS::Individual, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::HRIS::Individual, FinchAPI::Util::AnyHash))
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
            body: T.any(FinchAPI::Models::HRIS::Individual, FinchAPI::Util::AnyHash),
            code: Integer,
            individual_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, code: nil, individual_id: nil)
        end

        sig { override.returns({body: FinchAPI::Models::HRIS::Individual, code: Integer, individual_id: String}) }
        def to_hash
        end
      end
    end
  end
end
