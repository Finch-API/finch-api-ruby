# typed: strong

module FinchAPI
  module Models
    module HRIS
      IndividualBenefit = Benefits::IndividualBenefit

      module Benefits
        class IndividualBenefit < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Benefits::IndividualBenefit,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(FinchAPI::HRIS::Benefits::IndividualBenefit::Body)
            )
          end
          attr_reader :body

          sig do
            params(
              body: FinchAPI::HRIS::Benefits::IndividualBenefit::Body::OrHash
            ).void
          end
          attr_writer :body

          sig { returns(T.nilable(Integer)) }
          attr_reader :code

          sig { params(code: Integer).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          sig do
            params(
              body: FinchAPI::HRIS::Benefits::IndividualBenefit::Body::OrHash,
              code: Integer,
              individual_id: String
            ).returns(T.attached_class)
          end
          def self.new(body: nil, code: nil, individual_id: nil)
          end

          sig do
            override.returns(
              {
                body: FinchAPI::HRIS::Benefits::IndividualBenefit::Body,
                code: Integer,
                individual_id: String
              }
            )
          end
          def to_hash
          end

          class Body < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body,
                  FinchAPI::Internal::AnyHash
                )
              end

            # If the benefit supports annual maximum, the amount in cents for this individual.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :annual_maximum

            # If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
            # for this individual.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :catch_up

            sig { returns(T.nilable(FinchAPI::HRIS::BenefitContribution)) }
            attr_reader :company_contribution

            sig do
              params(
                company_contribution:
                  T.nilable(FinchAPI::HRIS::BenefitContribution::OrHash)
              ).void
            end
            attr_writer :company_contribution

            sig { returns(T.nilable(FinchAPI::HRIS::BenefitContribution)) }
            attr_reader :employee_deduction

            sig do
              params(
                employee_deduction:
                  T.nilable(FinchAPI::HRIS::BenefitContribution::OrHash)
              ).void
            end
            attr_writer :employee_deduction

            # Type for HSA contribution limit if the benefit is a HSA.
            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                )
              )
            end
            attr_accessor :hsa_contribution_limit

            sig do
              params(
                annual_maximum: T.nilable(Integer),
                catch_up: T.nilable(T::Boolean),
                company_contribution:
                  T.nilable(FinchAPI::HRIS::BenefitContribution::OrHash),
                employee_deduction:
                  T.nilable(FinchAPI::HRIS::BenefitContribution::OrHash),
                hsa_contribution_limit:
                  T.nilable(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # If the benefit supports annual maximum, the amount in cents for this individual.
              annual_maximum: nil,
              # If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
              # for this individual.
              catch_up: nil,
              company_contribution: nil,
              employee_deduction: nil,
              # Type for HSA contribution limit if the benefit is a HSA.
              hsa_contribution_limit: nil
            )
            end

            sig do
              override.returns(
                {
                  annual_maximum: T.nilable(Integer),
                  catch_up: T.nilable(T::Boolean),
                  company_contribution:
                    T.nilable(FinchAPI::HRIS::BenefitContribution),
                  employee_deduction:
                    T.nilable(FinchAPI::HRIS::BenefitContribution),
                  hsa_contribution_limit:
                    T.nilable(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                    )
                }
              )
            end
            def to_hash
            end

            # Type for HSA contribution limit if the benefit is a HSA.
            module HsaContributionLimit
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INDIVIDUAL =
                T.let(
                  :individual,
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                )
              FAMILY =
                T.let(
                  :family,
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
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
  end
end
