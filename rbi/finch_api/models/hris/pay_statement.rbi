# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatement < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::PayStatement, FinchAPI::Internal::AnyHash)
          end

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
        sig { returns(String) }
        attr_accessor :individual_id

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
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatement::Earning,
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
                FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
              )
            )
          end
          attr_accessor :type

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

          sig do
            params(
              amount: T.nilable(Integer),
              currency: T.nilable(String),
              hours: T.nilable(Float),
              name: T.nilable(String),
              type:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Earning::Type::OrSymbol
                ),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::Earning::Attributes::OrHash
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
                    FinchAPI::HRIS::PayStatement::Earning::Type::TaggedSymbol
                  ),
                attributes:
                  T.nilable(FinchAPI::HRIS::PayStatement::Earning::Attributes)
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

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::PayStatement::Earning::Attributes,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(
                FinchAPI::HRIS::PayStatement::Earning::Attributes::Metadata
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
            def self.new(metadata:)
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
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatement::Earning::Attributes::Metadata,
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
                FinchAPI::HRIS::PayStatement::EmployeeDeduction,
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
          sig { returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)) }
          attr_accessor :type

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

          sig do
            params(
              amount: T.nilable(Integer),
              currency: T.nilable(String),
              name: T.nilable(String),
              pre_tax: T.nilable(T::Boolean),
              type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::OrHash
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
                    FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes
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
                  FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(
                FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata
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
            def self.new(metadata:)
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
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata,
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
                FinchAPI::HRIS::PayStatement::EmployerContribution,
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
          sig { returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)) }
          attr_accessor :type

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

          sig do
            params(
              currency: T.nilable(String),
              name: T.nilable(String),
              type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
              amount: T.nilable(Integer),
              attributes:
                T.nilable(
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::OrHash
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
                    FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes
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
                  FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(
                FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::Metadata
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
            def self.new(metadata:)
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
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes::Metadata,
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
          OTHER =
            T.let(
              :other,
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
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatement::Tax,
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
              T.nilable(FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol)
            )
          end
          attr_accessor :type

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

          sig do
            params(
              currency: T.nilable(String),
              employer: T.nilable(T::Boolean),
              name: T.nilable(String),
              type:
                T.nilable(FinchAPI::HRIS::PayStatement::Tax::Type::OrSymbol),
              amount: T.nilable(Integer),
              attributes:
                T.nilable(FinchAPI::HRIS::PayStatement::Tax::Attributes::OrHash)
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
                    FinchAPI::HRIS::PayStatement::Tax::Type::TaggedSymbol
                  ),
                amount: T.nilable(Integer),
                attributes:
                  T.nilable(FinchAPI::HRIS::PayStatement::Tax::Attributes)
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

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::PayStatement::Tax::Attributes,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(FinchAPI::HRIS::PayStatement::Tax::Attributes::Metadata)
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
            def self.new(metadata:)
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
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::PayStatement::Tax::Attributes::Metadata,
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
            T.type_alias { T.all(Symbol, FinchAPI::HRIS::PayStatement::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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
          REGULAR_PAYROLL =
            T.let(
              :regular_payroll,
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
