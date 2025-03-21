# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitFeaturesAndOperations < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures)) }
        def supported_features
        end

        sig do
          params(
            _: T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures, FinchAPI::Util::AnyHash)
          )
            .returns(
              T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures, FinchAPI::Util::AnyHash)
            )
        end
        def supported_features=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::SupportPerBenefitType)) }
        def supported_operations
        end

        sig do
          params(_: T.any(FinchAPI::Models::HRIS::SupportPerBenefitType, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::HRIS::SupportPerBenefitType, FinchAPI::Util::AnyHash))
        end
        def supported_operations=(_)
        end

        sig do
          params(
            supported_features: T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures, FinchAPI::Util::AnyHash),
            supported_operations: T.any(FinchAPI::Models::HRIS::SupportPerBenefitType, FinchAPI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(supported_features: nil, supported_operations: nil)
        end

        sig do
          override
            .returns(
              {
                supported_features: FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures,
                supported_operations: FinchAPI::Models::HRIS::SupportPerBenefitType
              }
            )
        end
        def to_hash
        end

        class SupportedFeatures < FinchAPI::BaseModel
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
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
                )
                ]
              )
            )
          end
          def company_contribution
          end

          sig do
            params(
              _: T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
                )
                ]
              )
            )
              .returns(
                T.nilable(
                  T::Array[
                  T.nilable(
                    FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
                  )
                  ]
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
              T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
                )
                ]
              )
            )
          end
          def employee_deduction
          end

          sig do
            params(
              _: T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
                )
                ]
              )
            )
              .returns(
                T.nilable(
                  T::Array[
                  T.nilable(
                    FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
                  )
                  ]
                )
              )
          end
          def employee_deduction=(_)
          end

          # The list of frequencies supported by the provider for this benefit
          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)])) }
          def frequencies
          end

          sig do
            params(_: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)])
              .returns(T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)])
          end
          def frequencies=(_)
          end

          # Whether the provider supports HSA contribution limits. Empty if this feature is
          #   not supported for the benefit. This array only has values for HSA benefits.
          sig do
            returns(
              T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                )
                ]
              )
            )
          end
          def hsa_contribution_limit
          end

          sig do
            params(
              _: T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                )
                ]
              )
            )
              .returns(
                T.nilable(
                  T::Array[
                  T.nilable(
                    FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                  )
                  ]
                )
              )
          end
          def hsa_contribution_limit=(_)
          end

          sig do
            params(
              annual_maximum: T.nilable(T::Boolean),
              catch_up: T.nilable(T::Boolean),
              company_contribution: T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::OrSymbol
                )
                ]
              ),
              description: T.nilable(String),
              employee_deduction: T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::OrSymbol
                )
                ]
              ),
              frequencies: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)],
              hsa_contribution_limit: T.nilable(
                T::Array[
                T.nilable(
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::OrSymbol
                )
                ]
              )
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
            hsa_contribution_limit: nil
          )
          end

          sig do
            override
              .returns(
                {
                  annual_maximum: T.nilable(T::Boolean),
                  catch_up: T.nilable(T::Boolean),
                  company_contribution: T.nilable(
                    T::Array[
                    T.nilable(
                      FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
                    )
                    ]
                  ),
                  description: T.nilable(String),
                  employee_deduction: T.nilable(
                    T::Array[
                    T.nilable(
                      FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
                    )
                    ]
                  ),
                  frequencies: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)],
                  hsa_contribution_limit: T.nilable(
                    T::Array[
                    T.nilable(
                      FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                    )
                    ]
                  )
                }
              )
          end
          def to_hash
          end

          module CompanyContribution
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
                )
              end

            FIXED =
              T.let(
                :fixed,
                FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
              )
            PERCENT =
              T.let(
                :percent,
                FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          module EmployeeDeduction
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
                )
              end

            FIXED =
              T.let(
                :fixed,
                FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
              )
            PERCENT =
              T.let(
                :percent,
                FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          module HsaContributionLimit
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                )
              end

            INDIVIDUAL =
              T.let(
                :individual,
                FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
              )
            FAMILY =
              T.let(
                :family,
                FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[
                    FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                    ]
                  )
              end
              def values
              end
            end
          end
        end
      end
    end
  end
end
