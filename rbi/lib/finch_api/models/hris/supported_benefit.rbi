# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportedBenefit < FinchAPI::Internal::Type::BaseModel
        # Whether the provider supports an annual maximum for this benefit.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :annual_maximum

        # Whether the provider supports catch up for this benefit. This field will only be
        # true for retirement benefits.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :catch_up

        # Supported contribution types. An empty array indicates contributions are not
        # supported.
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)]
            )
          )
        end
        attr_accessor :company_contribution

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Supported deduction types. An empty array indicates deductions are not
        # supported.
        sig do
          returns(
            T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)])
          )
        end
        attr_accessor :employee_deduction

        # The list of frequencies supported by the provider for this benefit
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)])) }
        attr_reader :frequencies

        sig { params(frequencies: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)]).void }
        attr_writer :frequencies

        # Whether the provider supports HSA contribution limits. Empty if this feature is
        # not supported for the benefit. This array only has values for HSA benefits.
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)]
            )
          )
        end
        attr_accessor :hsa_contribution_limit

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)) }
        attr_accessor :type

        sig do
          params(
            annual_maximum: T.nilable(T::Boolean),
            catch_up: T.nilable(T::Boolean),
            company_contribution: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::OrSymbol)]),
            description: T.nilable(String),
            employee_deduction: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::OrSymbol)]),
            frequencies: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)],
            hsa_contribution_limit: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::OrSymbol)]),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(
          annual_maximum: nil,
          catch_up: nil,
          company_contribution: nil,
          description: nil,
          employee_deduction: nil,
          frequencies: nil,
          hsa_contribution_limit: nil,
          type: nil
        ); end
        sig do
          override
            .returns(
              {
                annual_maximum: T.nilable(T::Boolean),
                catch_up: T.nilable(T::Boolean),
                company_contribution: T.nilable(
                  T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)]
                ),
                description: T.nilable(String),
                employee_deduction: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)]),
                frequencies: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)],
                hsa_contribution_limit: T.nilable(
                  T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)]
                ),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
              }
            )
        end
        def to_hash; end

        module CompanyContribution
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol) }

          FIXED = T.let(:fixed, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)
          PERCENT = T.let(:percent, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol]) }
          def self.values; end
        end

        module EmployeeDeduction
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol) }

          FIXED = T.let(:fixed, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)
          PERCENT = T.let(:percent, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol]) }
          def self.values; end
        end

        module HsaContributionLimit
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol) }

          INDIVIDUAL =
            T.let(:individual, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)
          FAMILY = T.let(:family, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
