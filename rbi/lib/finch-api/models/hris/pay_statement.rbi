# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatement < FinchAPI::BaseModel
        # The array of earnings objects associated with this pay statement
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning)])) }
        def earnings
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning)]))
        end
        def earnings=(_)
        end

        # The array of deductions objects associated with this pay statement.
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction)])) }
        def employee_deductions
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction)]))
        end
        def employee_deductions=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution)])) }
        def employer_contributions
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution)]))
        end
        def employer_contributions=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def gross_pay
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def gross_pay=(_)
        end

        # A stable Finch `id` (UUID v4) for an individual in the company
        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def net_pay
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def net_pay=(_)
        end

        # The payment method.
        sig { returns(T.nilable(Symbol)) }
        def payment_method
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def payment_method=(_)
        end

        # The array of taxes objects associated with this pay statement.
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax)])) }
        def taxes
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax)]))
        end
        def taxes=(_)
        end

        # The number of hours worked for this pay period
        sig { returns(T.nilable(Float)) }
        def total_hours
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def total_hours=(_)
        end

        # The type of the payment associated with the pay statement.
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def type=(_)
        end

        sig do
          params(
            earnings: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning)]),
            employee_deductions: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction)]),
            employer_contributions: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution)]),
            gross_pay: T.nilable(FinchAPI::Models::Money),
            individual_id: String,
            net_pay: T.nilable(FinchAPI::Models::Money),
            payment_method: T.nilable(Symbol),
            taxes: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax)]),
            total_hours: T.nilable(Float),
            type: T.nilable(Symbol)
          )
            .returns(T.attached_class)
        end
        def self.new(
          earnings: nil,
          employee_deductions: nil,
          employer_contributions: nil,
          gross_pay: nil,
          individual_id: nil,
          net_pay: nil,
          payment_method: nil,
          taxes: nil,
          total_hours: nil,
          type: nil
        )
        end

        sig do
          override
            .returns(
              {
                earnings: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning)]),
                employee_deductions: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction)]),
                employer_contributions: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution)]),
                gross_pay: T.nilable(FinchAPI::Models::Money),
                individual_id: String,
                net_pay: T.nilable(FinchAPI::Models::Money),
                payment_method: T.nilable(Symbol),
                taxes: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax)]),
                total_hours: T.nilable(Float),
                type: T.nilable(Symbol)
              }
            )
        end
        def to_hash
        end

        class Earning < FinchAPI::BaseModel
          # The earnings amount in cents.
          sig { returns(T.nilable(Integer)) }
          def amount
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes)) }
          def attributes
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes))
              .returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes))
          end
          def attributes=(_)
          end

          # The earnings currency code.
          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          # The number of hours associated with this earning. (For salaried employees, this
          #   could be hours per pay period, `0` or `null`, depending on the provider).
          sig { returns(T.nilable(Float)) }
          def hours
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def hours=(_)
          end

          # The exact name of the deduction from the pay statement.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # The type of earning.
          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig do
            params(
              amount: T.nilable(Integer),
              attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes),
              currency: T.nilable(String),
              hours: T.nilable(Float),
              name: T.nilable(String),
              type: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(amount: nil, attributes: nil, currency: nil, hours: nil, name: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  amount: T.nilable(Integer),
                  attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes),
                  currency: T.nilable(String),
                  hours: T.nilable(Float),
                  name: T.nilable(String),
                  type: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end

          class Attributes < FinchAPI::BaseModel
            sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata)) }
            def metadata
            end

            sig do
              params(_: FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata)
                .returns(FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata)
            end
            def metadata=(_)
            end

            sig do
              params(metadata: FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata)
                .returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig { override.returns({metadata: FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata}) }
            def to_hash
            end

            class Metadata < FinchAPI::BaseModel
              # The metadata to be attached to the entity by existing rules. It is a key-value
              #   pairs where the values can be of any type (string, number, boolean, object,
              #   array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def metadata
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def metadata=(_)
              end

              sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
              def self.new(metadata: nil)
              end

              sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
              def to_hash
              end
            end
          end

          # The type of earning.
          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            SALARY = :salary
            WAGE = :wage
            REIMBURSEMENT = :reimbursement
            OVERTIME = :overtime
            SEVERANCE = :severance
            DOUBLE_OVERTIME = :double_overtime
            PTO = :pto
            SICK = :sick
            BONUS = :bonus
            COMMISSION = :commission
            TIPS = :tips
            NUMBER_1099 = :"1099"
            OTHER = :other
          end
        end

        class EmployeeDeduction < FinchAPI::BaseModel
          # The deduction amount in cents.
          sig { returns(T.nilable(Integer)) }
          def amount
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes)) }
          def attributes
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes))
              .returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes))
          end
          def attributes=(_)
          end

          # The deduction currency.
          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          # The deduction name from the pay statement.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # Boolean indicating if the deduction is pre-tax.
          sig { returns(T.nilable(T::Boolean)) }
          def pre_tax
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def pre_tax=(_)
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
              amount: T.nilable(Integer),
              attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes),
              currency: T.nilable(String),
              name: T.nilable(String),
              pre_tax: T.nilable(T::Boolean),
              type: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(amount: nil, attributes: nil, currency: nil, name: nil, pre_tax: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  amount: T.nilable(Integer),
                  attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes),
                  currency: T.nilable(String),
                  name: T.nilable(String),
                  pre_tax: T.nilable(T::Boolean),
                  type: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end

          class Attributes < FinchAPI::BaseModel
            sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata)) }
            def metadata
            end

            sig do
              params(_: FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata)
                .returns(FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata)
            end
            def metadata=(_)
            end

            sig do
              params(metadata: FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata)
                .returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig do
              override.returns({metadata: FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata})
            end
            def to_hash
            end

            class Metadata < FinchAPI::BaseModel
              # The metadata to be attached to the entity by existing rules. It is a key-value
              #   pairs where the values can be of any type (string, number, boolean, object,
              #   array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def metadata
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def metadata=(_)
              end

              sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
              def self.new(metadata: nil)
              end

              sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
              def to_hash
              end
            end
          end
        end

        class EmployerContribution < FinchAPI::BaseModel
          # The contribution amount in cents.
          sig { returns(T.nilable(Integer)) }
          def amount
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes)) }
          def attributes
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes))
              .returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes))
          end
          def attributes=(_)
          end

          # The contribution currency.
          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          # The contribution name from the pay statement.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
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
              amount: T.nilable(Integer),
              attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes),
              currency: T.nilable(String),
              name: T.nilable(String),
              type: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(amount: nil, attributes: nil, currency: nil, name: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  amount: T.nilable(Integer),
                  attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes),
                  currency: T.nilable(String),
                  name: T.nilable(String),
                  type: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end

          class Attributes < FinchAPI::BaseModel
            sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata)) }
            def metadata
            end

            sig do
              params(_: FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata)
                .returns(FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata)
            end
            def metadata=(_)
            end

            sig do
              params(metadata: FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata)
                .returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig do
              override
                .returns({metadata: FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata})
            end
            def to_hash
            end

            class Metadata < FinchAPI::BaseModel
              # The metadata to be attached to the entity by existing rules. It is a key-value
              #   pairs where the values can be of any type (string, number, boolean, object,
              #   array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def metadata
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def metadata=(_)
              end

              sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
              def self.new(metadata: nil)
              end

              sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
              def to_hash
              end
            end
          end
        end

        # The payment method.
        class PaymentMethod < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          CHECK = :check
          DIRECT_DEPOSIT = :direct_deposit
        end

        class Tax < FinchAPI::BaseModel
          # The tax amount in cents.
          sig { returns(T.nilable(Integer)) }
          def amount
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes)) }
          def attributes
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes))
              .returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes))
          end
          def attributes=(_)
          end

          # The currency code.
          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          # `true` if the amount is paid by the employers.
          sig { returns(T.nilable(T::Boolean)) }
          def employer
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def employer=(_)
          end

          # The exact name of tax from the pay statement.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # The type of taxes.
          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig do
            params(
              amount: T.nilable(Integer),
              attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes),
              currency: T.nilable(String),
              employer: T.nilable(T::Boolean),
              name: T.nilable(String),
              type: T.nilable(Symbol)
            )
              .returns(T.attached_class)
          end
          def self.new(amount: nil, attributes: nil, currency: nil, employer: nil, name: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  amount: T.nilable(Integer),
                  attributes: T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes),
                  currency: T.nilable(String),
                  employer: T.nilable(T::Boolean),
                  name: T.nilable(String),
                  type: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end

          class Attributes < FinchAPI::BaseModel
            sig { returns(T.nilable(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata)) }
            def metadata
            end

            sig do
              params(_: FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata)
                .returns(FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata)
            end
            def metadata=(_)
            end

            sig do
              params(metadata: FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata).returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig { override.returns({metadata: FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata}) }
            def to_hash
            end

            class Metadata < FinchAPI::BaseModel
              # The metadata to be attached to the entity by existing rules. It is a key-value
              #   pairs where the values can be of any type (string, number, boolean, object,
              #   array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def metadata
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def metadata=(_)
              end

              sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
              def self.new(metadata: nil)
              end

              sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
              def to_hash
              end
            end
          end

          # The type of taxes.
          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            STATE = :state
            FEDERAL = :federal
            LOCAL = :local
            FICA = :fica
          end
        end

        # The type of the payment associated with the pay statement.
        class Type < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          REGULAR_PAYROLL = :regular_payroll
          OFF_CYCLE_PAYROLL = :off_cycle_payroll
          ONE_TIME_PAYMENT = :one_time_payment
        end
      end
    end
  end
end
