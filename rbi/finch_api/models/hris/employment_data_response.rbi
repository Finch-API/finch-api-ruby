# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentDataResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::EmploymentDataResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              FinchAPI::HRIS::EmploymentData::UnionMember0,
              FinchAPI::HRIS::EmploymentData::BatchError
            )
          )
        end
        attr_accessor :body

        sig { returns(Integer) }
        attr_accessor :code

        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(String) }
        attr_accessor :individual_id

        sig do
          params(
            body:
              T.any(
                FinchAPI::HRIS::EmploymentData::UnionMember0::OrHash,
                FinchAPI::HRIS::EmploymentData::BatchError::OrHash
              ),
            code: Integer,
            individual_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          body:,
          code:,
          # A stable Finch `id` (UUID v4) for an individual in the company.
          individual_id:
        )
        end

        sig do
          override.returns(
            {
              body:
                T.any(
                  FinchAPI::HRIS::EmploymentData::UnionMember0,
                  FinchAPI::HRIS::EmploymentData::BatchError
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
