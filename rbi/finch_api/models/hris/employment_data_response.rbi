# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentDataResponse < FinchAPI::Internal::Type::BaseModel
        sig do
          returns(
            T.any(
              FinchAPI::Models::HRIS::EmploymentData::UnionMember0,
              FinchAPI::Models::HRIS::EmploymentData::BatchError
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
            body: T.any(
              FinchAPI::Models::HRIS::EmploymentData::UnionMember0,
              FinchAPI::Internal::AnyHash,
              FinchAPI::Models::HRIS::EmploymentData::BatchError
            ),
            code: Integer,
            individual_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          body:,
          code:,
          # A stable Finch `id` (UUID v4) for an individual in the company.
          individual_id:
        ); end
        sig do
          override
            .returns(
              {
                body: T.any(
                  FinchAPI::Models::HRIS::EmploymentData::UnionMember0,
                  FinchAPI::Models::HRIS::EmploymentData::BatchError
                ),
                code: Integer,
                individual_id: String
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
