# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        sig { returns(T.nilable(FinchAPI::OperationSupportMatrix)) }
        attr_reader :company_benefits

        sig do
          params(
            company_benefits: FinchAPI::OperationSupportMatrix::OrHash
          ).void
        end
        attr_writer :company_benefits

        sig { returns(T.nilable(FinchAPI::OperationSupportMatrix)) }
        attr_reader :individual_benefits

        sig do
          params(
            individual_benefits: FinchAPI::OperationSupportMatrix::OrHash
          ).void
        end
        attr_writer :individual_benefits

        sig do
          params(
            company_benefits: FinchAPI::OperationSupportMatrix::OrHash,
            individual_benefits: FinchAPI::OperationSupportMatrix::OrHash
          ).returns(T.attached_class)
        end
        def self.new(company_benefits: nil, individual_benefits: nil)
        end

        sig do
          override.returns(
            {
              company_benefits: FinchAPI::OperationSupportMatrix,
              individual_benefits: FinchAPI::OperationSupportMatrix
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
