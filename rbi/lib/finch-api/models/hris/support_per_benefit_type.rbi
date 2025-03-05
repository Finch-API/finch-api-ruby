# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        def company_benefits
        end

        sig { params(_: FinchAPI::Models::OperationSupportMatrix).returns(FinchAPI::Models::OperationSupportMatrix) }
        def company_benefits=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        def individual_benefits
        end

        sig { params(_: FinchAPI::Models::OperationSupportMatrix).returns(FinchAPI::Models::OperationSupportMatrix) }
        def individual_benefits=(_)
        end

        sig do
          params(
            company_benefits: FinchAPI::Models::OperationSupportMatrix,
            individual_benefits: FinchAPI::Models::OperationSupportMatrix
          )
            .void
        end
        def initialize(company_benefits: nil, individual_benefits: nil)
        end

        sig do
          override
            .returns(
              {
                company_benefits: FinchAPI::Models::OperationSupportMatrix,
                individual_benefits: FinchAPI::Models::OperationSupportMatrix
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
