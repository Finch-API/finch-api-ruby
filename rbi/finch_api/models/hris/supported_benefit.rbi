# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportedBenefit < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::SupportedBenefit, FinchAPI::Internal::AnyHash)
          end

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
              T::Array[
                T.nilable(
                  FinchAPI::HRIS::SupportedBenefit::CompanyContribution::OrSymbol
                )
              ]
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
            T.nilable(
              T::Array[
                T.nilable(
                  FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction::OrSymbol
                )
              ]
            )
          )
        end
        attr_accessor :employee_deduction

        # The list of frequencies supported by the provider for this benefit
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol)]
            )
          )
        end
        attr_reader :frequencies

        sig do
          params(
            frequencies:
              T::Array[T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol)]
          ).void
        end
        attr_writer :frequencies

        # Whether the provider supports HSA contribution limits. Empty if this feature is
        # not supported for the benefit. This array only has values for HSA benefits.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.nilable(
                  FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit::OrSymbol
                )
              ]
            )
          )
        end
        attr_accessor :hsa_contribution_limit

        sig do
          params(
            annual_maximum: T.nilable(T::Boolean),
            catch_up: T.nilable(T::Boolean),
            company_contribution:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::HRIS::SupportedBenefit::CompanyContribution::OrSymbol
                  )
                ]
              ),
            description: T.nilable(String),
            employee_deduction:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction::OrSymbol
                  )
                ]
              ),
            frequencies:
              T::Array[T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol)],
            hsa_contribution_limit:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit::OrSymbol
                  )
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the provider supports an annual maximum for this benefit.
          annual_maximum: nil,
          # Whether the provider supports catch up for this benefit. This field will only be
          # true for retirement benefits.
          catch_up: nil,
          # Supported contribution types. An empty array indicates contributions are not
          # supported.
          company_contribution: nil,
          description: nil,
          # Supported deduction types. An empty array indicates deductions are not
          # supported.
          employee_deduction: nil,
          # The list of frequencies supported by the provider for this benefit
          frequencies: nil,
          # Whether the provider supports HSA contribution limits. Empty if this feature is
          # not supported for the benefit. This array only has values for HSA benefits.
          hsa_contribution_limit: nil
        )
        end

        sig do
          override.returns(
            {
              annual_maximum: T.nilable(T::Boolean),
              catch_up: T.nilable(T::Boolean),
              company_contribution:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::SupportedBenefit::CompanyContribution::OrSymbol
                    )
                  ]
                ),
              description: T.nilable(String),
              employee_deduction:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction::OrSymbol
                    )
                  ]
                ),
              frequencies:
                T::Array[T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol)],
              hsa_contribution_limit:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit::OrSymbol
                    )
                  ]
                )
            }
          )
        end
        def to_hash
        end

        module CompanyContribution
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::HRIS::SupportedBenefit::CompanyContribution
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIXED =
            T.let(
              :fixed,
              FinchAPI::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol
            )
          PERCENT =
            T.let(
              :percent,
              FinchAPI::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::SupportedBenefit::CompanyContribution::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module EmployeeDeduction
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIXED =
            T.let(
              :fixed,
              FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol
            )
          PERCENT =
            T.let(
              :percent,
              FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module HsaContributionLimit
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDIVIDUAL =
            T.let(
              :individual,
              FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol
            )
          FAMILY =
            T.let(
              :family,
              FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
