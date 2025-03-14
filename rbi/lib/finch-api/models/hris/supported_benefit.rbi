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

        # Supported deduction types. An empty array indicates deductions are not
        #   supported.
        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def employee_deduction
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(Symbol)])).returns(T.nilable(T::Array[T.nilable(Symbol)]))
        end
        def employee_deduction=(_)
        end

        # The list of frequencies supported by the provider for this benefit
        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def frequencies
        end

        sig { params(_: T::Array[T.nilable(Symbol)]).returns(T::Array[T.nilable(Symbol)]) }
        def frequencies=(_)
        end

        # Whether the provider supports HSA contribution limits. Empty if this feature is
        #   not supported for the benefit. This array only has values for HSA benefits.
        sig { returns(T.nilable(T::Array[T.nilable(Symbol)])) }
        def hsa_contribution_limit
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(Symbol)])).returns(T.nilable(T::Array[T.nilable(Symbol)]))
        end
        def hsa_contribution_limit=(_)
        end

        # Type of benefit.
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
