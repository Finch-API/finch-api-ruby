# typed: strong

module FinchAPI
  module Models
    module HRIS
      module PayStatementResponseBody
        extend FinchAPI::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember0,
              FinchAPI::HRIS::PayStatementResponseBody::BatchError,
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember2
            )
          end

        class UnionMember0 < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember0,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::Paging
            )
          end
          attr_reader :paging

          sig do
            params(
              paging:
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::Paging::OrHash
            ).void
          end
          attr_writer :paging

          sig do
            returns(
              T::Array[
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement
              ]
            )
          end
          attr_accessor :pay_statements

          sig do
            params(
              paging:
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::Paging::OrHash,
              pay_statements:
                T::Array[
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(paging:, pay_statements:)
          end

          sig do
            override.returns(
              {
                paging:
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::Paging,
                pay_statements:
                  T::Array[
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement
                  ]
              }
            )
          end
          def to_hash
          end

          class Paging < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::Paging,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The current start index of the returned list of elements
            sig { returns(Integer) }
            attr_accessor :offset

            # The total number of elements for the entire query (not just the given page)
            sig { returns(T.nilable(Integer)) }
            attr_reader :count

            sig { params(count: Integer).void }
            attr_writer :count

            sig do
              params(offset: Integer, count: Integer).returns(T.attached_class)
            end
            def self.new(
              # The current start index of the returned list of elements
              offset:,
              # The total number of elements for the entire query (not just the given page)
              count: nil
            )
            end

            sig { override.returns({ offset: Integer, count: Integer }) }
            def to_hash
            end
          end

          class PayStatement < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The array of earnings objects associated with this pay statement
            sig do
              returns(
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning
                    )
                  ]
                )
              )
            end
            attr_accessor :earnings

            # The array of deductions objects associated with this pay statement.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction
                    )
                  ]
                )
              )
            end
            attr_accessor :employee_deductions

            sig do
              returns(
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution
                    )
                  ]
                )
              )
            end
            attr_accessor :employer_contributions

            sig { returns(T.nilable(FinchAPI::Money)) }
            attr_reader :gross_pay

            sig { params(gross_pay: T.nilable(FinchAPI::Money::OrHash)).void }
            attr_writer :gross_pay

            # A stable Finch `id` (UUID v4) for an individual in the company
            sig { returns(String) }
            attr_accessor :individual_id

            sig { returns(T.nilable(FinchAPI::Money)) }
            attr_reader :net_pay

            sig { params(net_pay: T.nilable(FinchAPI::Money::OrHash)).void }
            attr_writer :net_pay

            # The payment method.
            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::TaggedSymbol
                )
              )
            end
            attr_accessor :payment_method

            # The array of taxes objects associated with this pay statement.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax
                    )
                  ]
                )
              )
            end
            attr_accessor :taxes

            # The number of hours worked for this pay period
            sig { returns(T.nilable(Float)) }
            attr_accessor :total_hours

            # The type of the payment associated with the pay statement.
            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::TaggedSymbol
                )
              )
            end
            attr_accessor :type

            sig do
              params(
                earnings:
                  T.nilable(
                    T::Array[
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::OrHash
                      )
                    ]
                  ),
                employee_deductions:
                  T.nilable(
                    T::Array[
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::OrHash
                      )
                    ]
                  ),
                employer_contributions:
                  T.nilable(
                    T::Array[
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::OrHash
                      )
                    ]
                  ),
                gross_pay: T.nilable(FinchAPI::Money::OrHash),
                individual_id: String,
                net_pay: T.nilable(FinchAPI::Money::OrHash),
                payment_method:
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::OrSymbol
                  ),
                taxes:
                  T.nilable(
                    T::Array[
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::OrHash
                      )
                    ]
                  ),
                total_hours: T.nilable(Float),
                type:
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # The array of earnings objects associated with this pay statement
              earnings:,
              # The array of deductions objects associated with this pay statement.
              employee_deductions:,
              employer_contributions:,
              gross_pay:,
              # A stable Finch `id` (UUID v4) for an individual in the company
              individual_id:,
              net_pay:,
              # The payment method.
              payment_method:,
              # The array of taxes objects associated with this pay statement.
              taxes:,
              # The number of hours worked for this pay period
              total_hours:,
              # The type of the payment associated with the pay statement.
              type:
            )
            end

            sig do
              override.returns(
                {
                  earnings:
                    T.nilable(
                      T::Array[
                        T.nilable(
                          FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning
                        )
                      ]
                    ),
                  employee_deductions:
                    T.nilable(
                      T::Array[
                        T.nilable(
                          FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction
                        )
                      ]
                    ),
                  employer_contributions:
                    T.nilable(
                      T::Array[
                        T.nilable(
                          FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution
                        )
                      ]
                    ),
                  gross_pay: T.nilable(FinchAPI::Money),
                  individual_id: String,
                  net_pay: T.nilable(FinchAPI::Money),
                  payment_method:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::TaggedSymbol
                    ),
                  taxes:
                    T.nilable(
                      T::Array[
                        T.nilable(
                          FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax
                        )
                      ]
                    ),
                  total_hours: T.nilable(Float),
                  type:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::TaggedSymbol
                    )
                }
              )
            end
            def to_hash
            end

            class Earning < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning,
                    FinchAPI::Internal::AnyHash
                  )
                end

              # The earnings amount in cents.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :amount

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
              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                )
              end
              attr_accessor :type

              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes
                  )
                )
              end
              attr_reader :attributes

              sig do
                params(
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::OrHash
                    )
                ).void
              end
              attr_writer :attributes

              sig do
                params(
                  amount: T.nilable(Integer),
                  currency: T.nilable(String),
                  hours: T.nilable(Float),
                  name: T.nilable(String),
                  type:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::OrSymbol
                    ),
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # The earnings amount in cents.
                amount:,
                # The earnings currency code.
                currency:,
                # The number of hours associated with this earning. (For salaried employees, this
                # could be hours per pay period, `0` or `null`, depending on the provider).
                hours:,
                # The exact name of the deduction from the pay statement.
                name:,
                # The type of earning.
                type:,
                attributes: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: T.nilable(Integer),
                    currency: T.nilable(String),
                    hours: T.nilable(Float),
                    name: T.nilable(String),
                    type:
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                      ),
                    attributes:
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes
                      )
                  }
                )
              end
              def to_hash
              end

              # The type of earning.
              module Type
                extend FinchAPI::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SALARY =
                  T.let(
                    :salary,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                WAGE =
                  T.let(
                    :wage,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                REIMBURSEMENT =
                  T.let(
                    :reimbursement,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                OVERTIME =
                  T.let(
                    :overtime,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                SEVERANCE =
                  T.let(
                    :severance,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                DOUBLE_OVERTIME =
                  T.let(
                    :double_overtime,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                PTO =
                  T.let(
                    :pto,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                SICK =
                  T.let(
                    :sick,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                BONUS =
                  T.let(
                    :bonus,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                COMMISSION =
                  T.let(
                    :commission,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                TIPS =
                  T.let(
                    :tips,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                TYPE_1099 =
                  T.let(
                    :"1099",
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :other,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Attributes < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes,
                      FinchAPI::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata
                  )
                end
                attr_reader :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata::OrHash
                  ).void
                end
                attr_writer :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(metadata:)
                end

                sig do
                  override.returns(
                    {
                      metadata:
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata
                    }
                  )
                end
                def to_hash
                end

                class Metadata < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # The metadata to be attached to the entity by existing rules. It is a key-value
                  # pairs where the values can be of any type (string, number, boolean, object,
                  # array, etc.).
                  sig { returns(T::Hash[Symbol, T.nilable(T.anything)]) }
                  attr_accessor :metadata

                  sig do
                    params(
                      metadata: T::Hash[Symbol, T.nilable(T.anything)]
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The metadata to be attached to the entity by existing rules. It is a key-value
                    # pairs where the values can be of any type (string, number, boolean, object,
                    # array, etc.).
                    metadata:
                  )
                  end

                  sig do
                    override.returns(
                      { metadata: T::Hash[Symbol, T.nilable(T.anything)] }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction,
                    FinchAPI::Internal::AnyHash
                  )
                end

              # The deduction amount in cents.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :amount

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
              sig do
                returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol))
              end
              attr_accessor :type

              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes
                  )
                )
              end
              attr_reader :attributes

              sig do
                params(
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::OrHash
                    )
                ).void
              end
              attr_writer :attributes

              sig do
                params(
                  amount: T.nilable(Integer),
                  currency: T.nilable(String),
                  name: T.nilable(String),
                  pre_tax: T.nilable(T::Boolean),
                  type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # The deduction amount in cents.
                amount:,
                # The deduction currency.
                currency:,
                # The deduction name from the pay statement.
                name:,
                # Boolean indicating if the deduction is pre-tax.
                pre_tax:,
                # Type of benefit.
                type:,
                attributes: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: T.nilable(Integer),
                    currency: T.nilable(String),
                    name: T.nilable(String),
                    pre_tax: T.nilable(T::Boolean),
                    type: T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol),
                    attributes:
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes
                      )
                  }
                )
              end
              def to_hash
              end

              class Attributes < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes,
                      FinchAPI::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata
                  )
                end
                attr_reader :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata::OrHash
                  ).void
                end
                attr_writer :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(metadata:)
                end

                sig do
                  override.returns(
                    {
                      metadata:
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata
                    }
                  )
                end
                def to_hash
                end

                class Metadata < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # The metadata to be attached to the entity by existing rules. It is a key-value
                  # pairs where the values can be of any type (string, number, boolean, object,
                  # array, etc.).
                  sig { returns(T::Hash[Symbol, T.nilable(T.anything)]) }
                  attr_accessor :metadata

                  sig do
                    params(
                      metadata: T::Hash[Symbol, T.nilable(T.anything)]
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The metadata to be attached to the entity by existing rules. It is a key-value
                    # pairs where the values can be of any type (string, number, boolean, object,
                    # array, etc.).
                    metadata:
                  )
                  end

                  sig do
                    override.returns(
                      { metadata: T::Hash[Symbol, T.nilable(T.anything)] }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            class EmployerContribution < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution,
                    FinchAPI::Internal::AnyHash
                  )
                end

              # The contribution currency.
              sig { returns(T.nilable(String)) }
              attr_accessor :currency

              # The contribution name from the pay statement.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Type of benefit.
              sig do
                returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol))
              end
              attr_accessor :type

              # The contribution amount in cents.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :amount

              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes
                  )
                )
              end
              attr_reader :attributes

              sig do
                params(
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::OrHash
                    )
                ).void
              end
              attr_writer :attributes

              sig do
                params(
                  currency: T.nilable(String),
                  name: T.nilable(String),
                  type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
                  amount: T.nilable(Integer),
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # The contribution currency.
                currency:,
                # The contribution name from the pay statement.
                name:,
                # Type of benefit.
                type:,
                # The contribution amount in cents.
                amount: nil,
                attributes: nil
              )
              end

              sig do
                override.returns(
                  {
                    currency: T.nilable(String),
                    name: T.nilable(String),
                    type: T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol),
                    amount: T.nilable(Integer),
                    attributes:
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes
                      )
                  }
                )
              end
              def to_hash
              end

              class Attributes < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes,
                      FinchAPI::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata
                  )
                end
                attr_reader :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata::OrHash
                  ).void
                end
                attr_writer :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(metadata:)
                end

                sig do
                  override.returns(
                    {
                      metadata:
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata
                    }
                  )
                end
                def to_hash
                end

                class Metadata < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # The metadata to be attached to the entity by existing rules. It is a key-value
                  # pairs where the values can be of any type (string, number, boolean, object,
                  # array, etc.).
                  sig { returns(T::Hash[Symbol, T.nilable(T.anything)]) }
                  attr_accessor :metadata

                  sig do
                    params(
                      metadata: T::Hash[Symbol, T.nilable(T.anything)]
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The metadata to be attached to the entity by existing rules. It is a key-value
                    # pairs where the values can be of any type (string, number, boolean, object,
                    # array, etc.).
                    metadata:
                  )
                  end

                  sig do
                    override.returns(
                      { metadata: T::Hash[Symbol, T.nilable(T.anything)] }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            # The payment method.
            module PaymentMethod
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHECK =
                T.let(
                  :check,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::TaggedSymbol
                )
              DIRECT_DEPOSIT =
                T.let(
                  :direct_deposit,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::TaggedSymbol
                )
              OTHER =
                T.let(
                  :other,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Tax < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                  )
                )
              end
              attr_accessor :type

              # The tax amount in cents.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :amount

              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes
                  )
                )
              end
              attr_reader :attributes

              sig do
                params(
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::OrHash
                    )
                ).void
              end
              attr_writer :attributes

              sig do
                params(
                  currency: T.nilable(String),
                  employer: T.nilable(T::Boolean),
                  name: T.nilable(String),
                  type:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::OrSymbol
                    ),
                  amount: T.nilable(Integer),
                  attributes:
                    T.nilable(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # The currency code.
                currency:,
                # `true` if the amount is paid by the employers.
                employer:,
                # The exact name of tax from the pay statement.
                name:,
                # The type of taxes.
                type:,
                # The tax amount in cents.
                amount: nil,
                attributes: nil
              )
              end

              sig do
                override.returns(
                  {
                    currency: T.nilable(String),
                    employer: T.nilable(T::Boolean),
                    name: T.nilable(String),
                    type:
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                      ),
                    amount: T.nilable(Integer),
                    attributes:
                      T.nilable(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes
                      )
                  }
                )
              end
              def to_hash
              end

              # The type of taxes.
              module Type
                extend FinchAPI::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                STATE =
                  T.let(
                    :state,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                  )
                FEDERAL =
                  T.let(
                    :federal,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                  )
                LOCAL =
                  T.let(
                    :local,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                  )
                FICA =
                  T.let(
                    :fica,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Attributes < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes,
                      FinchAPI::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata
                  )
                end
                attr_reader :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata::OrHash
                  ).void
                end
                attr_writer :metadata

                sig do
                  params(
                    metadata:
                      FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(metadata:)
                end

                sig do
                  override.returns(
                    {
                      metadata:
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata
                    }
                  )
                end
                def to_hash
                end

                class Metadata < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # The metadata to be attached to the entity by existing rules. It is a key-value
                  # pairs where the values can be of any type (string, number, boolean, object,
                  # array, etc.).
                  sig { returns(T::Hash[Symbol, T.nilable(T.anything)]) }
                  attr_accessor :metadata

                  sig do
                    params(
                      metadata: T::Hash[Symbol, T.nilable(T.anything)]
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The metadata to be attached to the entity by existing rules. It is a key-value
                    # pairs where the values can be of any type (string, number, boolean, object,
                    # array, etc.).
                    metadata:
                  )
                  end

                  sig do
                    override.returns(
                      { metadata: T::Hash[Symbol, T.nilable(T.anything)] }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            # The type of the payment associated with the pay statement.
            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OFF_CYCLE_PAYROLL =
                T.let(
                  :off_cycle_payroll,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::TaggedSymbol
                )
              ONE_TIME_PAYMENT =
                T.let(
                  :one_time_payment,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::TaggedSymbol
                )
              REGULAR_PAYROLL =
                T.let(
                  :regular_payroll,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class BatchError < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody::BatchError,
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
              { code: Float, message: String, name: String, finch_code: String }
            )
          end
          def to_hash
          end
        end

        class UnionMember2 < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code::TaggedFloat
            )
          end
          attr_accessor :code

          sig do
            returns(
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode::TaggedSymbol
            )
          end
          attr_accessor :finch_code

          sig do
            returns(
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message::TaggedSymbol
            )
          end
          attr_accessor :message

          sig do
            returns(
              FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name::TaggedSymbol
            )
          end
          attr_accessor :name

          sig do
            params(
              code:
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code::OrFloat,
              finch_code:
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode::OrSymbol,
              message:
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message::OrSymbol,
              name:
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(code:, finch_code:, message:, name:)
          end

          sig do
            override.returns(
              {
                code:
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code::TaggedFloat,
                finch_code:
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode::TaggedSymbol,
                message:
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message::TaggedSymbol,
                name:
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Code
            extend FinchAPI::Internal::Type::Enum

            TaggedFloat =
              T.type_alias do
                T.all(
                  Float,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code
                )
              end
            OrFloat = T.type_alias { Float }

            CODE_202 =
              T.let(
                202,
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code::TaggedFloat
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code::TaggedFloat
                ]
              )
            end
            def self.values
            end
          end

          module FinchCode
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DATA_SYNC_IN_PROGRESS =
              T.let(
                :data_sync_in_progress,
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Message
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            THE_PAY_STATEMENTS_FOR_THIS_PAYMENT_ARE_BEING_FETCHED_PLEASE_CHECK_BACK_LATER =
              T.let(
                :"The pay statements for this payment are being fetched. Please check back later.",
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Name
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACCEPTED =
              T.let(
                :accepted,
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[FinchAPI::HRIS::PayStatementResponseBody::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
