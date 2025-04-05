# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::Internal::Type::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        attr_reader :company_benefits

        sig do
          params(company_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Internal::AnyHash)).void
        end
        attr_writer :company_benefits

        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        attr_reader :individual_benefits

        sig do
          params(individual_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Internal::AnyHash))
            .void
        end
        attr_writer :individual_benefits

        sig do
          params(
            company_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Internal::AnyHash),
            individual_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(company_benefits: nil, individual_benefits: nil); end

        sig do
          override
            .returns(
              {
                company_benefits: FinchAPI::Models::OperationSupportMatrix,
                individual_benefits: FinchAPI::Models::OperationSupportMatrix
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
