# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualBenefit < FinchAPI::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body)) }
          def body
          end

          sig do
            params(_: FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body)
              .returns(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body)
          end
          def body=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def code
          end

          sig { params(_: Integer).returns(Integer) }
          def code=(_)
          end

          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig do
            params(
              body: FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body,
              code: Integer,
              individual_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(body: nil, code: nil, individual_id: nil)
          end

          sig do
            override
              .returns(
                {body: FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body, code: Integer, individual_id: String}
              )
          end
          def to_hash
          end

          class Body < FinchAPI::BaseModel
            # If the benefit supports annual maximum, the amount in cents for this individual.
            sig { returns(T.nilable(Integer)) }
            def annual_maximum
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def annual_maximum=(_)
            end

            # If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
            #   for this individual.
            sig { returns(T.nilable(T::Boolean)) }
            def catch_up
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def catch_up=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitContribution)) }
            def company_contribution
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::HRIS::BenefitContribution))
                .returns(T.nilable(FinchAPI::Models::HRIS::BenefitContribution))
            end
            def company_contribution=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitContribution)) }
            def employee_deduction
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::HRIS::BenefitContribution))
                .returns(T.nilable(FinchAPI::Models::HRIS::BenefitContribution))
            end
            def employee_deduction=(_)
            end

            # Type for HSA contribution limit if the benefit is a HSA.
            sig do
              returns(
                T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol)
              )
            end
            def hsa_contribution_limit
            end

            sig do
              params(
                _: T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol)
              )
                .returns(
                  T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol)
                )
            end
            def hsa_contribution_limit=(_)
            end

            sig do
              params(
                annual_maximum: T.nilable(Integer),
                catch_up: T.nilable(T::Boolean),
                company_contribution: T.nilable(FinchAPI::Models::HRIS::BenefitContribution),
                employee_deduction: T.nilable(FinchAPI::Models::HRIS::BenefitContribution),
                hsa_contribution_limit: T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(
              annual_maximum: nil,
              catch_up: nil,
              company_contribution: nil,
              employee_deduction: nil,
              hsa_contribution_limit: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    annual_maximum: T.nilable(Integer),
                    catch_up: T.nilable(T::Boolean),
                    company_contribution: T.nilable(FinchAPI::Models::HRIS::BenefitContribution),
                    employee_deduction: T.nilable(FinchAPI::Models::HRIS::BenefitContribution),
                    hsa_contribution_limit: T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol)
                  }
                )
            end
            def to_hash
            end

            # Type for HSA contribution limit if the benefit is a HSA.
            module HsaContributionLimit
              extend FinchAPI::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                  )
                end

              INDIVIDUAL =
                T.let(
                  :individual,
                  FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                )
              FAMILY =
                T.let(
                  :family,
                  FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit::TaggedSymbol
                )
            end
          end
        end
      end

      IndividualBenefit = Benefits::IndividualBenefit
    end
  end
end
