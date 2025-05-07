# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        sig do
          returns(
            T.any(
              FinchAPI::HRIS::Individual::UnionMember0,
              FinchAPI::HRIS::Individual::BatchError
            )
          )
        end
        attr_accessor :body

        sig { returns(Integer) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :individual_id

        sig do
          params(
            body:
              T.any(
                FinchAPI::HRIS::Individual::UnionMember0::OrHash,
                FinchAPI::HRIS::Individual::BatchError::OrHash
              ),
            code: Integer,
            individual_id: String
          ).returns(T.attached_class)
        end
        def self.new(body:, code:, individual_id:)
        end

        sig do
          override.returns(
            {
              body:
                T.any(
                  FinchAPI::HRIS::Individual::UnionMember0,
                  FinchAPI::HRIS::Individual::BatchError
                ),
              code: Integer,
              individual_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
