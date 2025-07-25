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
            returns(FinchAPI::HRIS::Benefits::IndividualBenefit::Body::Variants)
          end
          attr_accessor :body

          sig { returns(Integer) }
          attr_accessor :code

          sig { returns(String) }
          attr_accessor :individual_id

          sig do
            params(
              body:
                T.any(
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::OrHash,
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError::OrHash
                ),
              code: Integer,
              individual_id: String
            ).returns(T.attached_class)
          end
          def self.new(body:, code:, individual_id:)
          end

          sig do
            override.returns(
              {
                body:
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::Variants,
                code: Integer,
                individual_id: String
              }
            )
          end
          def to_hash
          end

          module Body
            extend FinchAPI::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0,
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError
                )
              end

            class UnionMember0 < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0,
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
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
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
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::OrSymbol
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # If the benefit supports annual maximum, the amount in cents for this individual.
                annual_maximum:,
                # If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
                # for this individual.
                catch_up:,
                company_contribution:,
                employee_deduction:,
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
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
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
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INDIVIDUAL =
                  T.let(
                    :individual,
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                  )
                FAMILY =
                  T.let(
                    :family,
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class BatchError < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :code

              sig { returns(String) }
              attr_accessor :message

              sig { returns(String) }
              attr_accessor :name

              sig { returns(T.nilable(String)) }
              attr_reader :finch_code

              sig { params(finch_code: String).void }
              attr_writer :finch_code

              sig do
                params(
                  code: Float,
                  message: String,
                  name: String,
                  finch_code: String
                ).returns(T.attached_class)
              end
              def self.new(code:, message:, name:, finch_code: nil)
              end

              sig do
                override.returns(
                  {
                    code: Float,
                    message: String,
                    name: String,
                    finch_code: String
                  }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
