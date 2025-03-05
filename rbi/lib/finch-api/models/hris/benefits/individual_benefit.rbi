# typed: strong

module FinchAPI
  module Models
    module HRIS
      IndividualBenefit = T.type_alias { Benefits::IndividualBenefit }

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
              .void
          end
          def initialize(body: nil, code: nil, individual_id: nil)
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
            sig { returns(T.nilable(Integer)) }
            def annual_maximum
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def annual_maximum=(_)
            end

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

            sig { returns(T.nilable(Symbol)) }
            def hsa_contribution_limit
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def hsa_contribution_limit=(_)
            end

            sig do
              params(
                annual_maximum: T.nilable(Integer),
                catch_up: T.nilable(T::Boolean),
                company_contribution: T.nilable(FinchAPI::Models::HRIS::BenefitContribution),
                employee_deduction: T.nilable(FinchAPI::Models::HRIS::BenefitContribution),
                hsa_contribution_limit: T.nilable(Symbol)
              )
                .void
            end
            def initialize(
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
                    hsa_contribution_limit: T.nilable(Symbol)
                  }
                )
            end
            def to_hash
            end

            class HsaContributionLimit < FinchAPI::Enum
              abstract!

              INDIVIDUAL = T.let(:individual, T.nilable(Symbol))
              FAMILY = T.let(:family, T.nilable(Symbol))

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
