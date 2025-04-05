# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitFeaturesAndOperations < FinchAPI::Internal::Type::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures)) }
        attr_reader :supported_features

        sig do
          params(
            supported_features: T.any(
              FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures,
              FinchAPI::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :supported_features

        sig { returns(T.nilable(FinchAPI::Models::HRIS::SupportPerBenefitType)) }
        attr_reader :supported_operations

        sig do
          params(
            supported_operations: T.any(FinchAPI::Models::HRIS::SupportPerBenefitType, FinchAPI::Internal::AnyHash)
          )
            .void
        end
        attr_writer :supported_operations

        sig do
          params(
            supported_features: T.any(
              FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures,
              FinchAPI::Internal::AnyHash
            ),
            supported_operations: T.any(FinchAPI::Models::HRIS::SupportPerBenefitType, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(supported_features: nil, supported_operations: nil); end

        sig do
          override
            .returns(
              {
                supported_features: FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures,
                supported_operations: FinchAPI::Models::HRIS::SupportPerBenefitType
              }
            )
        end
        def to_hash; end

        class SupportedFeatures < FinchAPI::Internal::Type::BaseModel
          # Whether the provider supports an annual maximum for this benefit.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :annual_maximum

          # Whether the provider supports catch up for this benefit. This field will only be
          #   true for retirement benefits.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :catch_up

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
          attr_accessor :company_contribution

          sig { returns(T.nilable(String)) }
          attr_accessor :description

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
          attr_accessor :employee_deduction

          # The list of frequencies supported by the provider for this benefit
          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)])) }
          attr_reader :frequencies

          sig { params(frequencies: T::Array[T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)]).void }
          attr_writer :frequencies

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
          attr_accessor :hsa_contribution_limit

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
          ); end
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
          def to_hash; end

          module CompanyContribution
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution::TaggedSymbol]
                )
            end
            def self.values; end
          end

          module EmployeeDeduction
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction::TaggedSymbol]
                )
            end
            def self.values; end
          end

          module HsaContributionLimit
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[
                    FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end
      end
    end
  end
end
