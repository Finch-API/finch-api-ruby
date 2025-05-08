# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatement < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The array of earnings objects associated with this pay statement
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::HRIS::PayStatement::Earning)]
            )
          )
        end
        attr_accessor :earnings

        # The array of deductions objects associated with this pay statement.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.nilable(FinchAPI::HRIS::PayStatement::EmployeeDeduction)
              ]
            )
          )
        end
        attr_accessor :employee_deductions

        sig do
          returns(
            T.nilable(
              T::Array[
                T.nilable(FinchAPI::HRIS::PayStatement::EmployerContribution)
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
        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig { returns(T.nilable(FinchAPI::Money)) }
        attr_reader :net_pay

        sig { params(net_pay: T.nilable(FinchAPI::Money::OrHash)).void }
        attr_writer :net_pay

        # The payment method.
        sig do
          returns(
            T.nilable(FinchAPI::HRIS::PayStatement::PaymentMethod::TaggedSymbol)
          )
        end
        attr_accessor :payment_method

        # The array of taxes objects associated with this pay statement.
        sig do
          returns(
            T.nilable(T::Array[T.nilable(FinchAPI::HRIS::PayStatement::Tax)])
          )
        end
        attr_accessor :taxes

        # The number of hours worked for this pay period
        sig { returns(T.nilable(Float)) }
        attr_accessor :total_hours

        # The type of the payment associated with the pay statement.
        sig do
          returns(T.nilable(FinchAPI::HRIS::PayStatement::Type::TaggedSymbol))
        end
        attr_accessor :type

        sig do
          params(
            earnings:
              T.nilable(
                T::Array[
                  T.nilable(FinchAPI::HRIS::PayStatement::Earning::OrHash)
                ]
              ),
            employee_deductions:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::HRIS::PayStatement::EmployeeDeduction::OrHash
                  )
                ]
              ),
            employer_contributions:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::HRIS::PayStatement::EmployerContribution::OrHash
                  )
                ]
              ),
            gross_pay: T.nilable(FinchAPI::Money::OrHash),
            individual_id: String,
            net_pay: T.nilable(FinchAPI::Money::OrHash),
            payment_method:
              T.nilable(FinchAPI::HRIS::PayStatement::PaymentMethod::OrSymbol),
            taxes:
              T.nilable(
                T::Array[T.nilable(FinchAPI::HRIS::PayStatement::Tax::OrHash)]
              ),
            total_hours: T.nilable(Float),
            type: T.nilable(FinchAPI::HRIS::PayStatement::Type::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The array of earnings objects associated with this pay statement
          earnings: nil,
          # The array of deductions objects associated with this pay statement.
          employee_deductions: nil,
          employer_contributions: nil,
          gross_pay: nil,
          # A stable Finch `id` (UUID v4) for an individual in the company
          individual_id: nil,
          net_pay: nil,
          # The payment method.
          payment_method: nil,
          # The array of taxes objects associated with this pay statement.
          taxes: nil,
          # The number of hours worked for this pay period
          total_hours: nil,
          # The type of the payment associated with the pay statement.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              earnings:
                T.nilable(
                  T::Array[T.nilable(FinchAPI::HRIS::PayStatement::Earning)]
                ),
              employee_deductions:
                T.nilable(
                  T::Array[
                    T.nilable(FinchAPI::HRIS::PayStatement::EmployeeDeduction)
                  ]
                ),
              employer_contributions:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::PayStatement::EmployerContribution
                    )
                  ]
                ),
              gross_pay: T.nilable(FinchAPI::Money),
              individual_id: String,
              net_pay: T.nilable(FinchAPI::Money),
              payment_method:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::PaymentMethod::TaggedSymbol
                ),
              taxes:
                T.nilable(
                  T::Array[T.nilable(FinchAPI::HRIS::PayStatement::Tax)]
                ),
              total_hours: T.nilable(Float),
              type: T.nilable(FinchAPI::HRIS::PayStatement::Type::TaggedSymbol)
            }
          )
        end
        def to_hash
        end

        class Earning < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # The earnings amount in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount

          sig do
            returns(
              T.nilable(FinchAPI::HRIS::PayStatement::Earning::Attributes)
            )
          end
          attr_reader :attributes

          sig do
            params(
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Earning::Attributes::OrHash
                )
            ).void
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
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: T.nilable(Integer),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Earning::Attributes::OrHash
                ),
              currency: T.nilable(String),
              hours: T.nilable(Float),
              name: T.nilable(String),
              type:
                T.nilable(FinchAPI::HRIS::PayStatement::Earning::Type::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # The earnings amount in cents.
            amount: nil,
            attributes: nil,
            # The earnings currency code.
            currency: nil,
            # The number of hours associated with this earning. (For salaried employees, this
            # could be hours per pay period, `0` or `null`, depending on the provider).
            hours: nil,
            # The exact name of the deduction from the pay statement.
            name: nil,
            # The type of earning.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                amount: T.nilable(Integer),
                attributes:
                  T.nilable(FinchAPI::HRIS::PayStatement::Earning::Attributes),
                currency: T.nilable(String),
                hours: T.nilable(Float),
                name: T.nilable(String),
                type:
                  T.nilable(
                    FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Earning::Attributes::Metadata
                )
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::Earning::Attributes::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::Earning::Attributes::Metadata::OrHash
              ).returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig do
              override.returns(
                {
                  metadata:
                    FinchAPI::HRIS::PayStatement::Earning::Attributes::Metadata
                }
              )
            end
            def to_hash
            end

            class Metadata < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

              # The metadata to be attached to the entity by existing rules. It is a key-value
              # pairs where the values can be of any type (string, number, boolean, object,
              # array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
              attr_reader :metadata

              sig do
                params(metadata: T::Hash[Symbol, T.nilable(T.anything)]).void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T::Hash[Symbol, T.nilable(T.anything)]
                ).returns(T.attached_class)
              end
              def self.new(
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                metadata: nil
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

          # The type of earning.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::HRIS::PayStatement::Earning::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SALARY =
              T.let(
                :salary,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            WAGE =
              T.let(
                :wage,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            REIMBURSEMENT =
              T.let(
                :reimbursement,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            OVERTIME =
              T.let(
                :overtime,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            SEVERANCE =
              T.let(
                :severance,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            DOUBLE_OVERTIME =
              T.let(
                :double_overtime,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            PTO =
              T.let(
                :pto,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            SICK =
              T.let(
                :sick,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            BONUS =
              T.let(
                :bonus,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            COMMISSION =
              T.let(
                :commission,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            TIPS =
              T.let(
                :tips,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            TYPE_1099 =
              T.let(
                :"1099",
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # The deduction amount in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount

          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes
              )
            )
          end
          attr_reader :attributes

          sig do
            params(
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::OrHash
                )
            ).void
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
          sig { returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)) }
          attr_accessor :type

          sig do
            params(
              amount: T.nilable(Integer),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::OrHash
                ),
              currency: T.nilable(String),
              name: T.nilable(String),
              pre_tax: T.nilable(T::Boolean),
              type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # The deduction amount in cents.
            amount: nil,
            attributes: nil,
            # The deduction currency.
            currency: nil,
            # The deduction name from the pay statement.
            name: nil,
            # Boolean indicating if the deduction is pre-tax.
            pre_tax: nil,
            # Type of benefit.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                amount: T.nilable(Integer),
                attributes:
                  T.nilable(
                    FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes
                  ),
                currency: T.nilable(String),
                name: T.nilable(String),
                pre_tax: T.nilable(T::Boolean),
                type: T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)
              }
            )
          end
          def to_hash
          end

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata
                )
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata::OrHash
              ).returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig do
              override.returns(
                {
                  metadata:
                    FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata
                }
              )
            end
            def to_hash
            end

            class Metadata < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

              # The metadata to be attached to the entity by existing rules. It is a key-value
              # pairs where the values can be of any type (string, number, boolean, object,
              # array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
              attr_reader :metadata

              sig do
                params(metadata: T::Hash[Symbol, T.nilable(T.anything)]).void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T::Hash[Symbol, T.nilable(T.anything)]
                ).returns(T.attached_class)
              end
              def self.new(
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                metadata: nil
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
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # The contribution amount in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount

          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes
              )
            )
          end
          attr_reader :attributes

          sig do
            params(
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::OrHash
                )
            ).void
          end
          attr_writer :attributes

          # The contribution currency.
          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          # The contribution name from the pay statement.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Type of benefit.
          sig { returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)) }
          attr_accessor :type

          sig do
            params(
              amount: T.nilable(Integer),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::OrHash
                ),
              currency: T.nilable(String),
              name: T.nilable(String),
              type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # The contribution amount in cents.
            amount: nil,
            attributes: nil,
            # The contribution currency.
            currency: nil,
            # The contribution name from the pay statement.
            name: nil,
            # Type of benefit.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                amount: T.nilable(Integer),
                attributes:
                  T.nilable(
                    FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes
                  ),
                currency: T.nilable(String),
                name: T.nilable(String),
                type: T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)
              }
            )
          end
          def to_hash
          end

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::Metadata
                )
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::Metadata::OrHash
              ).returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig do
              override.returns(
                {
                  metadata:
                    FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::Metadata
                }
              )
            end
            def to_hash
            end

            class Metadata < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

              # The metadata to be attached to the entity by existing rules. It is a key-value
              # pairs where the values can be of any type (string, number, boolean, object,
              # array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
              attr_reader :metadata

              sig do
                params(metadata: T::Hash[Symbol, T.nilable(T.anything)]).void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T::Hash[Symbol, T.nilable(T.anything)]
                ).returns(T.attached_class)
              end
              def self.new(
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                metadata: nil
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
              T.all(Symbol, FinchAPI::HRIS::PayStatement::PaymentMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHECK =
            T.let(
              :check,
              FinchAPI::HRIS::PayStatement::PaymentMethod::TaggedSymbol
            )
          DIRECT_DEPOSIT =
            T.let(
              :direct_deposit,
              FinchAPI::HRIS::PayStatement::PaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::PayStatement::PaymentMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Tax < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # The tax amount in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount

          sig do
            returns(T.nilable(FinchAPI::HRIS::PayStatement::Tax::Attributes))
          end
          attr_reader :attributes

          sig do
            params(
              attributes:
                T.nilable(FinchAPI::HRIS::PayStatement::Tax::Attributes::OrHash)
            ).void
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
          sig do
            returns(
              T.nilable(FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol)
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: T.nilable(Integer),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Tax::Attributes::OrHash
                ),
              currency: T.nilable(String),
              employer: T.nilable(T::Boolean),
              name: T.nilable(String),
              type: T.nilable(FinchAPI::HRIS::PayStatement::Tax::Type::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # The tax amount in cents.
            amount: nil,
            attributes: nil,
            # The currency code.
            currency: nil,
            # `true` if the amount is paid by the employers.
            employer: nil,
            # The exact name of tax from the pay statement.
            name: nil,
            # The type of taxes.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                amount: T.nilable(Integer),
                attributes:
                  T.nilable(FinchAPI::HRIS::PayStatement::Tax::Attributes),
                currency: T.nilable(String),
                employer: T.nilable(T::Boolean),
                name: T.nilable(String),
                type:
                  T.nilable(
                    FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Tax::Attributes::Metadata
                )
              )
            end
            attr_reader :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::Tax::Attributes::Metadata::OrHash
              ).void
            end
            attr_writer :metadata

            sig do
              params(
                metadata:
                  FinchAPI::HRIS::PayStatement::Tax::Attributes::Metadata::OrHash
              ).returns(T.attached_class)
            end
            def self.new(metadata: nil)
            end

            sig do
              override.returns(
                {
                  metadata:
                    FinchAPI::HRIS::PayStatement::Tax::Attributes::Metadata
                }
              )
            end
            def to_hash
            end

            class Metadata < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

              # The metadata to be attached to the entity by existing rules. It is a key-value
              # pairs where the values can be of any type (string, number, boolean, object,
              # array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
              attr_reader :metadata

              sig do
                params(metadata: T::Hash[Symbol, T.nilable(T.anything)]).void
              end
              attr_writer :metadata

              sig do
                params(
                  metadata: T::Hash[Symbol, T.nilable(T.anything)]
                ).returns(T.attached_class)
              end
              def self.new(
                # The metadata to be attached to the entity by existing rules. It is a key-value
                # pairs where the values can be of any type (string, number, boolean, object,
                # array, etc.).
                metadata: nil
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

          # The type of taxes.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::HRIS::PayStatement::Tax::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STATE =
              T.let(
                :state,
                FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol
              )
            FEDERAL =
              T.let(
                :federal,
                FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol
              )
            LOCAL =
              T.let(
                :local,
                FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol
              )
            FICA =
              T.let(
                :fica,
                FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end

        # The type of the payment associated with the pay statement.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::HRIS::PayStatement::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REGULAR_PAYROLL =
            T.let(
              :regular_payroll,
              FinchAPI::HRIS::PayStatement::Type::TaggedSymbol
            )
          OFF_CYCLE_PAYROLL =
            T.let(
              :off_cycle_payroll,
              FinchAPI::HRIS::PayStatement::Type::TaggedSymbol
            )
          ONE_TIME_PAYMENT =
            T.let(
              :one_time_payment,
              FinchAPI::HRIS::PayStatement::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::PayStatement::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
