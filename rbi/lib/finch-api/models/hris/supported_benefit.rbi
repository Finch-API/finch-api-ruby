# typed: strong

module FinchAPI
  module Models
    module HRIS
      class SupportedBenefit < FinchAPI::BaseModel
        sig { returns(T.nilable(T::Boolean)) }
        def annual_maximum
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def annual_maximum=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def catch_up
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def catch_up=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def company_contribution
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(Symbol)])).returns(T.nilable(T::Array[T.nilable(Symbol)]))
        end
        def company_contribution=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def employee_deduction
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(Symbol)])).returns(T.nilable(T::Array[T.nilable(Symbol)]))
        end
        def employee_deduction=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def frequencies
        end

        sig { params(_: T::Array[T.nilable(Symbol)]).returns(T::Array[T.nilable(Symbol)]) }
        def frequencies=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def hsa_contribution_limit
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(Symbol)])).returns(T.nilable(T::Array[T.nilable(Symbol)]))
        end
        def hsa_contribution_limit=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def type=(_)
        end

        sig do
          params(
            annual_maximum: T.nilable(T::Boolean),
            catch_up: T.nilable(T::Boolean),
            company_contribution: T.nilable(T::Array[T.nilable(Symbol)]),
            description: T.nilable(String),
            employee_deduction: T.nilable(T::Array[T.nilable(Symbol)]),
            frequencies: T::Array[T.nilable(Symbol)],
            hsa_contribution_limit: T.nilable(T::Array[T.nilable(Symbol)]),
            type: T.nilable(Symbol)
          )
            .void
        end
        def initialize(
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
                company_contribution: T.nilable(T::Array[T.nilable(Symbol)]),
                description: T.nilable(String),
                employee_deduction: T.nilable(T::Array[T.nilable(Symbol)]),
                frequencies: T::Array[T.nilable(Symbol)],
                hsa_contribution_limit: T.nilable(T::Array[T.nilable(Symbol)]),
                type: T.nilable(Symbol)
              }
            )
        end
        def to_hash
        end

        class CompanyContribution < FinchAPI::Enum
          abstract!

          FIXED = T.let(:fixed, T.nilable(Symbol))
          PERCENT = T.let(:percent, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class EmployeeDeduction < FinchAPI::Enum
          abstract!

          FIXED = T.let(:fixed, T.nilable(Symbol))
          PERCENT = T.let(:percent, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class HsaContributionLimit < FinchAPI::Enum
          abstract!

          INDIVIDUAL = T.let(:individual, T.nilable(Symbol))
          FAMILY = T.let(:family, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
