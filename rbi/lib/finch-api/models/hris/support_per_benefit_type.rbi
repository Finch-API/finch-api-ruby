# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        def company_benefits
        end

        sig do
          params(_: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash))
        end
        def company_benefits=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        def individual_benefits
        end

        sig do
          params(_: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash))
        end
        def individual_benefits=(_)
        end

        sig do
          params(
            company_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash),
            individual_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(company_benefits: nil, individual_benefits: nil)
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
