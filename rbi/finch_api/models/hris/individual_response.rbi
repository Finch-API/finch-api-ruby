# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::IndividualResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(FinchAPI::HRIS::Individual::Variants) }
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
              body: FinchAPI::HRIS::Individual::Variants,
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
