# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement])) }
        attr_reader :pay_statements

        sig do
          params(
            pay_statements: T::Array[T.any(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement, FinchAPI::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :pay_statements

        sig { returns(T.nilable(String)) }
        attr_reader :start_date

        sig { params(start_date: String).void }
        attr_writer :start_date

        sig do
          params(
            end_date: String,
            pay_statements: T::Array[T.any(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement, FinchAPI::Internal::AnyHash)],
            start_date: String,
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(end_date: nil, pay_statements: nil, start_date: nil, request_options: {}); end

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
        def to_hash; end

        class PayStatement < FinchAPI::Internal::Type::BaseModel
          # The array of earnings objects associated with this pay statement
          sig do
            returns(
              T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning)])
            )
          end
          attr_accessor :earnings

          # The array of deductions objects associated with this pay statement.
          sig do
            returns(
              T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction)]
              )
            )
          end
          attr_accessor :employee_deductions

          sig do
            returns(
              T.nilable(
                T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution)]
              )
            )
          end
          attr_accessor :employer_contributions

          sig { returns(T.nilable(FinchAPI::Models::Money)) }
          attr_reader :gross_pay

          sig { params(gross_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::AnyHash))).void }
          attr_writer :gross_pay

          # A stable Finch `id` (UUID v4) for an individual in the company
          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          sig { returns(T.nilable(FinchAPI::Models::Money)) }
          attr_reader :net_pay

          sig { params(net_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::AnyHash))).void }
          attr_writer :net_pay

          # The payment method.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::OrSymbol)) }
          attr_accessor :payment_method

          # The array of taxes objects associated with this pay statement.
          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)])) }
          attr_accessor :taxes

          # The number of hours worked for this pay period
          sig { returns(T.nilable(Float)) }
          attr_accessor :total_hours

          # The type of the payment associated with the pay statement.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::OrSymbol)) }
          attr_accessor :type

          sig do
            params(
              earnings: T.nilable(
                T::Array[
                  T.nilable(
                    T.any(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning, FinchAPI::Internal::AnyHash)
                  )
                ]
              ),
              employee_deductions: T.nilable(
                T::Array[
                  T.nilable(
                    T.any(
                      FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction,
                      FinchAPI::Internal::AnyHash
                    )
                  )
                ]
              ),
              employer_contributions: T.nilable(
                T::Array[
                  T.nilable(
                    T.any(
                      FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution,
                      FinchAPI::Internal::AnyHash
                    )
                  )
                ]
              ),
              gross_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::AnyHash)),
              individual_id: String,
              net_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::AnyHash)),
              payment_method: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::OrSymbol),
              taxes: T.nilable(
                T::Array[
                  T.nilable(
                    T.any(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax, FinchAPI::Internal::AnyHash)
                  )
                ]
              ),
              total_hours: T.nilable(Float),
              type: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::OrSymbol)
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
          ); end
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
                  payment_method: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::OrSymbol),
                  taxes: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax)]),
                  total_hours: T.nilable(Float),
                  type: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::OrSymbol)
                }
              )
          end
          def to_hash; end

          class Earning < FinchAPI::Internal::Type::BaseModel
            # The earnings amount in cents.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes)) }
            attr_reader :attributes

            sig do
              params(
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :attributes

            # The earnings currency code.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # The number of hours associated with this earning. (For salaried employees, this
            # could be hours per pay period, `0` or `null`, depending on the provider).
            sig { returns(T.nilable(Float)) }
            attr_accessor :hours

            # The exact name of the deduction from the pay statement.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The type of earning.
            sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol)) }
            attr_accessor :type

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                ),
                currency: T.nilable(String),
                hours: T.nilable(Float),
                name: T.nilable(String),
                type: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(amount: nil, attributes: nil, currency: nil, hours: nil, name: nil, type: nil); end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes),
                    currency: T.nilable(String),
                    hours: T.nilable(Float),
                    name: T.nilable(String),
                    type: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol)
                  }
                )
            end
            def to_hash; end

            class Attributes < FinchAPI::Internal::Type::BaseModel
              sig do
                returns(
                  T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata)
                )
              end
              attr_reader :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(metadata: nil); end

              sig do
                override
                  .returns(
                    {metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata}
                  )
              end
              def to_hash; end

              class Metadata < FinchAPI::Internal::Type::BaseModel
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_reader :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                attr_writer :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
                def self.new(metadata: nil); end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash; end
              end
            end

            # The type of earning.
            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                  )
                end

              SALARY =
                T.let(:salary, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              WAGE =
                T.let(:wage, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              REIMBURSEMENT =
                T.let(
                  :reimbursement,
                  FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              OVERTIME =
                T.let(
                  :overtime,
                  FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              SEVERANCE =
                T.let(
                  :severance,
                  FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              DOUBLE_OVERTIME =
                T.let(
                  :double_overtime,
                  FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              PTO =
                T.let(:pto, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              SICK =
                T.let(:sick, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              BONUS =
                T.let(:bonus, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              COMMISSION =
                T.let(
                  :commission,
                  FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              TIPS =
                T.let(:tips, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              TYPE_1099 =
                T.let(:"1099", FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)
              OTHER =
                T.let(:other, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end

          class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
            # The deduction amount in cents.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount

            sig do
              returns(
                T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes)
              )
            end
            attr_reader :attributes

            sig do
              params(
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :attributes

            # The deduction currency.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # The deduction name from the pay statement.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Boolean indicating if the deduction is pre-tax.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :pre_tax

            # Type of benefit.
            sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)) }
            attr_accessor :type

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                ),
                currency: T.nilable(String),
                name: T.nilable(String),
                pre_tax: T.nilable(T::Boolean),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(amount: nil, attributes: nil, currency: nil, name: nil, pre_tax: nil, type: nil); end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes),
                    currency: T.nilable(String),
                    name: T.nilable(String),
                    pre_tax: T.nilable(T::Boolean),
                    type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
                  }
                )
            end
            def to_hash; end

            class Attributes < FinchAPI::Internal::Type::BaseModel
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                  )
                )
              end
              attr_reader :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(metadata: nil); end

              sig do
                override
                  .returns(
                    {
                      metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                    }
                  )
              end
              def to_hash; end

              class Metadata < FinchAPI::Internal::Type::BaseModel
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_reader :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                attr_writer :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
                def self.new(metadata: nil); end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash; end
              end
            end
          end

          class EmployerContribution < FinchAPI::Internal::Type::BaseModel
            # The contribution amount in cents.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount

            sig do
              returns(
                T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes)
              )
            end
            attr_reader :attributes

            sig do
              params(
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :attributes

            # The contribution currency.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # The contribution name from the pay statement.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Type of benefit.
            sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)) }
            attr_accessor :type

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                ),
                currency: T.nilable(String),
                name: T.nilable(String),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(amount: nil, attributes: nil, currency: nil, name: nil, type: nil); end

            sig do
              override
                .returns(
                  {
                    amount: T.nilable(Integer),
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes),
                    currency: T.nilable(String),
                    name: T.nilable(String),
                    type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
                  }
                )
            end
            def to_hash; end

            class Attributes < FinchAPI::Internal::Type::BaseModel
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                  )
                )
              end
              attr_reader :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(metadata: nil); end

              sig do
                override
                  .returns(
                    {
                      metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                    }
                  )
              end
              def to_hash; end

              class Metadata < FinchAPI::Internal::Type::BaseModel
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_reader :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                attr_writer :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
                def self.new(metadata: nil); end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash; end
              end
            end
          end

          # The payment method.
          module PaymentMethod
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol
                )
              end

            CHECK =
              T.let(:check, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol)
            DIRECT_DEPOSIT =
              T.let(
                :direct_deposit,
                FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol]
                )
            end
            def self.values; end
          end

          class Tax < FinchAPI::Internal::Type::BaseModel
            # The tax amount in cents.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes)) }
            attr_reader :attributes

            sig do
              params(
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :attributes

            # The currency code.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # `true` if the amount is paid by the employers.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :employer

            # The exact name of tax from the pay statement.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The type of taxes.
            sig { returns(T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol)) }
            attr_accessor :type

            sig do
              params(
                amount: T.nilable(Integer),
                attributes: T.nilable(
                  T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes,
                    FinchAPI::Internal::AnyHash
                  )
                ),
                currency: T.nilable(String),
                employer: T.nilable(T::Boolean),
                name: T.nilable(String),
                type: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol)
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
                    attributes: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes),
                    currency: T.nilable(String),
                    employer: T.nilable(T::Boolean),
                    name: T.nilable(String),
                    type: T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol)
                  }
                )
            end
            def to_hash; end

            class Attributes < FinchAPI::Internal::Type::BaseModel
              sig do
                returns(
                  T.nilable(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata)
                )
              end
              attr_reader :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T.any(
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(metadata: nil); end

              sig do
                override
                  .returns(
                    {metadata: FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata}
                  )
              end
              def to_hash; end

              class Metadata < FinchAPI::Internal::Type::BaseModel
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_reader :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).void }
                attr_writer :metadata

                sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
                def self.new(metadata: nil); end

                sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
                def to_hash; end
              end
            end

            # The type of taxes.
            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol
                  )
                end

              STATE =
                T.let(:state, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol)
              FEDERAL =
                T.let(:federal, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol)
              LOCAL =
                T.let(:local, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol)
              FICA =
                T.let(:fica, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol])
              end
              def self.values; end
            end
          end

          # The type of the payment associated with the pay statement.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol) }

            REGULAR_PAYROLL =
              T.let(:regular_payroll, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol)
            OFF_CYCLE_PAYROLL =
              T.let(
                :off_cycle_payroll,
                FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol
              )
            ONE_TIME_PAYMENT =
              T.let(:one_time_payment, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol)

            sig do
              override
                .returns(T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
