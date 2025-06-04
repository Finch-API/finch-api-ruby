# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitFeaturesAndOperations < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitFeaturesAndOperations,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(FinchAPI::HRIS::SupportedBenefit)) }
        attr_reader :supported_features

        sig do
          params(
            supported_features: FinchAPI::HRIS::SupportedBenefit::OrHash
          ).void
        end
        attr_writer :supported_features

        sig { returns(T.nilable(FinchAPI::HRIS::SupportPerBenefitType)) }
        attr_reader :supported_operations

        sig do
          params(
            supported_operations: FinchAPI::HRIS::SupportPerBenefitType::OrHash
          ).void
        end
        attr_writer :supported_operations

        sig do
          params(
            supported_features: FinchAPI::HRIS::SupportedBenefit::OrHash,
            supported_operations: FinchAPI::HRIS::SupportPerBenefitType::OrHash
          ).returns(T.attached_class)
        end
        def self.new(supported_features: nil, supported_operations: nil)
        end

        sig do
          override.returns(
            {
              supported_features: FinchAPI::HRIS::SupportedBenefit,
              supported_operations: FinchAPI::HRIS::SupportPerBenefitType
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
