# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportedBenefit < FinchAPI::BaseModel
        # Whether the provider supports an annual maximum for this benefit.
        sig { returns(T.nilable(T::Boolean)) }
        def annual_maximum
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def annual_maximum=(_)
        end

        # Whether the provider supports catch up for this benefit. This field will only be
        #   true for retirement benefits.
        sig { returns(T.nilable(T::Boolean)) }
        def catch_up
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def catch_up=(_)
        end

        # Supported contribution types. An empty array indicates contributions are not
        #   supported.
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)]
            )
          )
        end
        def company_contribution
        end

        sig do
          params(
            _: T.nilable(
              T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)]
            )
          )
            .returns(
              T.nilable(
                T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)]
              )
            )
        end
        def company_contribution=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        # Supported deduction types. An empty array indicates deductions are not
        #   supported.
        sig do
          returns(
            T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)])
          )
        end
        def employee_deduction
        end

        sig do
          params(
            _: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)])
          )
            .returns(
              T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)])
            )
        end
        def employee_deduction=(_)
        end

        # The list of frequencies supported by the provider for this benefit
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)])) }
        def frequencies
        end

        sig do
          params(_: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)])
            .returns(T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)])
        end
        def frequencies=(_)
        end

        # Whether the provider supports HSA contribution limits. Empty if this feature is
        #   not supported for the benefit. This array only has values for HSA benefits.
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)]
            )
          )
        end
        def hsa_contribution_limit
        end

        sig do
          params(
            _: T.nilable(
              T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)]
            )
          )
            .returns(
              T.nilable(
                T::Array[T.nilable(FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)]
              )
            )
        end
        def hsa_contribution_limit=(_)
        end

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)) }
        def type
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol))
        end
        def type=(_)
        end

        sig do
          params(
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
        )
        end

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
        def to_hash
        end

        module CompanyContribution
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol) }

          FIXED = T.let(:fixed, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)
          PERCENT = T.let(:percent, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol)
        end

        module EmployeeDeduction
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol) }

          FIXED = T.let(:fixed, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)
          PERCENT = T.let(:percent, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol)
        end

        module HsaContributionLimit
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol) }

          INDIVIDUAL =
            T.let(:individual, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)
          FAMILY = T.let(:family, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol)
        end
      end
    end
  end
end
