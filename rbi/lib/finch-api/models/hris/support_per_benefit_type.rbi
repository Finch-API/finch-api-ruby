# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        attr_reader :company_benefits

        sig { params(company_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash)).void }
        attr_writer :company_benefits

        sig { returns(T.nilable(FinchAPI::Models::OperationSupportMatrix)) }
        attr_reader :individual_benefits

        sig { params(individual_benefits: T.any(FinchAPI::Models::OperationSupportMatrix, FinchAPI::Util::AnyHash)).void }
        attr_writer :individual_benefits

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
