# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(String)) }
        def end_date
        end

        sig { params(_: String).returns(String) }
        def end_date=(_)
        end

        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement])) }
        def pay_statements
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement])
            .returns(T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement])
        end
        def pay_statements=(_)
        end

        sig { returns(T.nilable(String)) }
        def start_date
        end

        sig { params(_: String).returns(String) }
        def start_date=(_)
        end

        sig do
          params(
            end_date: String,
            pay_statements: T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement],
            start_date: String,
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                end_date: String,
                pay_statements: T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement],
                start_date: String,
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class PayStatement < FinchAPI::BaseModel
          sig do
            returns(
              T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning)])
            )
          end
          def earnings
          end

          sig do
            params(
              _: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning)])
            )
              .returns(
                T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning)])
              )
          end
          def earnings=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction)]
              )
            )
          end
          def employee_deductions
          end

          sig do
            params(
              _: T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction)]
              )
            )
              .returns(
                T.nilable(
                  T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction)]
                )
              )
          end
          def employee_deductions=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution)]
              )
            )
          end
          def employer_contributions
          end

          sig do
            params(
              _: T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution)]
              )
            )
              .returns(
                T.nilable(
                  T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution)]
                )
              )
          end
          def employer_contributions=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Money)) }
          def gross_pay
          end

          sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
          def gross_pay=(_)
          end

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

          sig { returns(T.nilable(Symbol)) }
          def payment_method
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def payment_method=(_)
          end

          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)])) }
          def taxes
          end

          sig do
            params(
              _: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)])
            )
              .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)]))
          end
          def taxes=(_)
          end

          sig { returns(T.nilable(Float)) }
          def total_hours
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def total_hours=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig do
            params(
              earnings: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning)]),
              employee_deductions: T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction)]
              ),
              employer_contributions: T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution)]
              ),
              gross_pay: T.nilable(FinchAPI::Models::Money),
              individual_id: String,
              net_pay: T.nilable(FinchAPI::Models::Money),
              payment_method: T.nilable(Symbol),
              taxes: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)]),
              total_hours: T.nilable(Float),
              type: T.nilable(Symbol)
            )
              .void
          end
          def initialize(
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
                  earnings: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning)]),
                  employee_deductions: T.nilable(
                    T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction)]
                  ),
                  employer_contributions: T.nilable(
                    T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution)]
                  ),
                  gross_pay: T.nilable(FinchAPI::Models::Money),
                  individual_id: String,
                  net_pay: T.nilable(FinchAPI::Models::Money),
                  payment_method: T.nilable(Symbol),
                  taxes: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)]),
                  total_hours: T.nilable(Float),
                  type: T.nilable(Symbol)
                }
              )
          end
          def to_hash
          end

          class Earning < FinchAPI::BaseModel
            sig { returns(T.nilable(Integer)) }
            def amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes)) }
            def attributes
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes))
                .returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes))
            end
            def attributes=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(Float)) }
            def hours
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def hours=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes),
                currency: T.nilable(String),
                hours: T.nilable(Float),
                name: T.nilable(String),
                type: T.nilable(Symbol)
              )
                .void
            end
            def initialize(amount: nil, attributes: nil, currency: nil, hours: nil, name: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes),
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
              sig do
                returns(
                  T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata)
                )
              end
              def metadata
              end

              sig do
                params(_: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata)
                  .returns(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata)
              end
              def metadata=(_)
              end

              sig do
                params(
                  metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata
                )
                  .void
              end
              def initialize(metadata: nil)
              end

              sig do
                override
                  .returns(
                    {metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata}
                  )
              end
              def to_hash
              end

              class Metadata < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                def metadata
                end

                sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
                def metadata=(_)
                end

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                def initialize(metadata: nil)
                end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash
                end
              end
            end

            class Type < FinchAPI::Enum
              abstract!

              SALARY = T.let(:salary, T.nilable(Symbol))
              WAGE = T.let(:wage, T.nilable(Symbol))
              REIMBURSEMENT = T.let(:reimbursement, T.nilable(Symbol))
              OVERTIME = T.let(:overtime, T.nilable(Symbol))
              SEVERANCE = T.let(:severance, T.nilable(Symbol))
              DOUBLE_OVERTIME = T.let(:double_overtime, T.nilable(Symbol))
              PTO = T.let(:pto, T.nilable(Symbol))
              SICK = T.let(:sick, T.nilable(Symbol))
              BONUS = T.let(:bonus, T.nilable(Symbol))
              COMMISSION = T.let(:commission, T.nilable(Symbol))
              TIPS = T.let(:tips, T.nilable(Symbol))
              NUMBER_1099 = T.let(:"1099", T.nilable(Symbol))
              OTHER = T.let(:other, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class EmployeeDeduction < FinchAPI::BaseModel
            sig { returns(T.nilable(Integer)) }
            def amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes)
              )
            end
            def attributes
            end

            sig do
              params(
                _: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes)
              )
                .returns(
                  T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes)
                )
            end
            def attributes=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def pre_tax
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def pre_tax=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes),
                currency: T.nilable(String),
                name: T.nilable(String),
                pre_tax: T.nilable(T::Boolean),
                type: T.nilable(Symbol)
              )
                .void
            end
            def initialize(amount: nil, attributes: nil, currency: nil, name: nil, pre_tax: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes),
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
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                  )
                )
              end
              def metadata
              end

              sig do
                params(
                  _: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                )
                  .returns(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                  )
              end
              def metadata=(_)
              end

              sig do
                params(
                  metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                )
                  .void
              end
              def initialize(metadata: nil)
              end

              sig do
                override
                  .returns(
                    {
                      metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                    }
                  )
              end
              def to_hash
              end

              class Metadata < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                def metadata
                end

                sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
                def metadata=(_)
                end

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                def initialize(metadata: nil)
                end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash
                end
              end
            end
          end

          class EmployerContribution < FinchAPI::BaseModel
            sig { returns(T.nilable(Integer)) }
            def amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes)
              )
            end
            def attributes
            end

            sig do
              params(
                _: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes)
              )
                .returns(
                  T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes)
                )
            end
            def attributes=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes),
                currency: T.nilable(String),
                name: T.nilable(String),
                type: T.nilable(Symbol)
              )
                .void
            end
            def initialize(amount: nil, attributes: nil, currency: nil, name: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes),
                    currency: T.nilable(String),
                    name: T.nilable(String),
                    type: T.nilable(Symbol)
                  }
                )
            end
            def to_hash
            end

            class Attributes < FinchAPI::BaseModel
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                  )
                )
              end
              def metadata
              end

              sig do
                params(
                  _: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                )
                  .returns(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                  )
              end
              def metadata=(_)
              end

              sig do
                params(
                  metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                )
                  .void
              end
              def initialize(metadata: nil)
              end

              sig do
                override
                  .returns(
                    {
                      metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                    }
                  )
              end
              def to_hash
              end

              class Metadata < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                def metadata
                end

                sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
                def metadata=(_)
                end

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                def initialize(metadata: nil)
                end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash
                end
              end
            end
          end

          class PaymentMethod < FinchAPI::Enum
            abstract!

            CHECK = T.let(:check, T.nilable(Symbol))
            DIRECT_DEPOSIT = T.let(:direct_deposit, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Tax < FinchAPI::BaseModel
            sig { returns(T.nilable(Integer)) }
            def amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes)) }
            def attributes
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes))
                .returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes))
            end
            def attributes=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def employer
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def employer=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes),
                currency: T.nilable(String),
                employer: T.nilable(T::Boolean),
                name: T.nilable(String),
                type: T.nilable(Symbol)
              )
                .void
            end
            def initialize(amount: nil, attributes: nil, currency: nil, employer: nil, name: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes),
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
              sig do
                returns(
                  T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata)
                )
              end
              def metadata
              end

              sig do
                params(_: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata)
                  .returns(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata)
              end
              def metadata=(_)
              end

              sig do
                params(metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata)
                  .void
              end
              def initialize(metadata: nil)
              end

              sig do
                override
                  .returns(
                    {metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata}
                  )
              end
              def to_hash
              end

              class Metadata < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                def metadata
                end

                sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
                def metadata=(_)
                end

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                def initialize(metadata: nil)
                end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash
                end
              end
            end

            class Type < FinchAPI::Enum
              abstract!

              STATE = T.let(:state, T.nilable(Symbol))
              FEDERAL = T.let(:federal, T.nilable(Symbol))
              LOCAL = T.let(:local, T.nilable(Symbol))
              FICA = T.let(:fica, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class Type < FinchAPI::Enum
            abstract!

            REGULAR_PAYROLL = T.let(:regular_payroll, T.nilable(Symbol))
            OFF_CYCLE_PAYROLL = T.let(:off_cycle_payroll, T.nilable(Symbol))
            ONE_TIME_PAYMENT = T.let(:one_time_payment, T.nilable(Symbol))

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
end
