# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Sandbox::PaymentCreateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Date)) }
        attr_reader :end_date

        sig { params(end_date: Date).void }
        attr_writer :end_date

        # Array of pay statements to include in the payment.
        sig do
          returns(
            T.nilable(
              T::Array[FinchAPI::Sandbox::PaymentCreateParams::PayStatement]
            )
          )
        end
        attr_reader :pay_statements

        sig do
          params(
            pay_statements:
              T::Array[
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::OrHash
              ]
          ).void
        end
        attr_writer :pay_statements

        sig { returns(T.nilable(Date)) }
        attr_reader :start_date

        sig { params(start_date: Date).void }
        attr_writer :start_date

        sig do
          params(
            end_date: Date,
            pay_statements:
              T::Array[
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::OrHash
              ],
            start_date: Date,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          end_date: nil,
          # Array of pay statements to include in the payment.
          pay_statements: nil,
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_date: Date,
              pay_statements:
                T::Array[FinchAPI::Sandbox::PaymentCreateParams::PayStatement],
              start_date: Date,
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class PayStatement < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :individual_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning
                ]
              )
            )
          end
          attr_reader :earnings

          sig do
            params(
              earnings:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::OrHash
                ]
            ).void
          end
          attr_writer :earnings

          sig do
            returns(
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction
                ]
              )
            )
          end
          attr_reader :employee_deductions

          sig do
            params(
              employee_deductions:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::OrHash
                ]
            ).void
          end
          attr_writer :employee_deductions

          sig do
            returns(
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution
                ]
              )
            )
          end
          attr_reader :employer_contributions

          sig do
            params(
              employer_contributions:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::OrHash
                ]
            ).void
          end
          attr_writer :employer_contributions

          sig { returns(T.nilable(Integer)) }
          attr_reader :gross_pay

          sig { params(gross_pay: Integer).void }
          attr_writer :gross_pay

          sig { returns(T.nilable(Integer)) }
          attr_reader :net_pay

          sig { params(net_pay: Integer).void }
          attr_writer :net_pay

          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::OrSymbol
              )
            )
          end
          attr_accessor :payment_method

          sig do
            returns(
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax
                ]
              )
            )
          end
          attr_reader :taxes

          sig do
            params(
              taxes:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::OrHash
                ]
            ).void
          end
          attr_writer :taxes

          sig { returns(T.nilable(Float)) }
          attr_reader :total_hours

          sig { params(total_hours: Float).void }
          attr_writer :total_hours

          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::OrSymbol
              )
            )
          end
          attr_accessor :type

          sig do
            params(
              individual_id: String,
              earnings:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::OrHash
                ],
              employee_deductions:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::OrHash
                ],
              employer_contributions:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::OrHash
                ],
              gross_pay: Integer,
              net_pay: Integer,
              payment_method:
                T.nilable(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::OrSymbol
                ),
              taxes:
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::OrHash
                ],
              total_hours: Float,
              type:
                T.nilable(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            individual_id:,
            earnings: nil,
            employee_deductions: nil,
            employer_contributions: nil,
            gross_pay: nil,
            net_pay: nil,
            payment_method: nil,
            taxes: nil,
            total_hours: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                individual_id: String,
                earnings:
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning
                  ],
                employee_deductions:
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction
                  ],
                employer_contributions:
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution
                  ],
                gross_pay: Integer,
                net_pay: Integer,
                payment_method:
                  T.nilable(
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::OrSymbol
                  ),
                taxes:
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax
                  ],
                total_hours: Float,
                type:
                  T.nilable(
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::OrSymbol
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
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :amount

            sig { params(amount: Integer).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :hours

            sig { params(hours: Float).void }
            attr_writer :hours

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                amount: Integer,
                hours: Float,
                name: String,
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(amount: nil, hours: nil, name: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  hours: Float,
                  name: String,
                  type:
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BONUS =
                T.let(
                  :bonus,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              COMMISSION =
                T.let(
                  :commission,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              DOUBLE_OVERTIME =
                T.let(
                  :double_overtime,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              OTHER =
                T.let(
                  :other,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              OVERTIME =
                T.let(
                  :overtime,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              PTO =
                T.let(
                  :pto,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              REIMBURSEMENT =
                T.let(
                  :reimbursement,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              SALARY =
                T.let(
                  :salary,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              SEVERANCE =
                T.let(
                  :severance,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              SICK =
                T.let(
                  :sick,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              TIPS =
                T.let(
                  :tips,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              WAGE =
                T.let(
                  :wage,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )
              TYPE_1099 =
                T.let(
                  :"1099",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :amount

            sig { params(amount: Integer).void }
            attr_writer :amount

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :pre_tax

            sig { params(pre_tax: T::Boolean).void }
            attr_writer :pre_tax

            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                amount: Integer,
                name: String,
                pre_tax: T::Boolean,
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(amount: nil, name: nil, pre_tax: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  name: String,
                  pre_tax: T::Boolean,
                  type:
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TYPE_457 =
                T.let(
                  :"457",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              TYPE_401K =
                T.let(
                  :"401k",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              TYPE_401K_ROTH =
                T.let(
                  :"401k_roth",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              TYPE_401K_LOAN =
                T.let(
                  :"401k_loan",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              TYPE_403B =
                T.let(
                  :"403b",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              TYPE_403B_ROTH =
                T.let(
                  :"403b_roth",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              TYPE_457_ROTH =
                T.let(
                  :"457_roth",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              COMMUTER =
                T.let(
                  :commuter,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              CUSTOM_POST_TAX =
                T.let(
                  :custom_post_tax,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              CUSTOM_PRE_TAX =
                T.let(
                  :custom_pre_tax,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              FSA_DEPENDENT_CARE =
                T.let(
                  :fsa_dependent_care,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              FSA_MEDICAL =
                T.let(
                  :fsa_medical,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              HSA_POST =
                T.let(
                  :hsa_post,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              HSA_PRE =
                T.let(
                  :hsa_pre,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              S125_DENTAL =
                T.let(
                  :s125_dental,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              S125_MEDICAL =
                T.let(
                  :s125_medical,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              S125_VISION =
                T.let(
                  :s125_vision,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              SIMPLE =
                T.let(
                  :simple,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )
              SIMPLE_IRA =
                T.let(
                  :simple_ira,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class EmployerContribution < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :amount

            sig { params(amount: Integer).void }
            attr_writer :amount

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                amount: Integer,
                name: String,
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(amount: nil, name: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  name: String,
                  type:
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TYPE_457 =
                T.let(
                  :"457",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              TYPE_401K =
                T.let(
                  :"401k",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              TYPE_401K_ROTH =
                T.let(
                  :"401k_roth",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              TYPE_401K_LOAN =
                T.let(
                  :"401k_loan",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              TYPE_403B =
                T.let(
                  :"403b",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              TYPE_403B_ROTH =
                T.let(
                  :"403b_roth",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              TYPE_457_ROTH =
                T.let(
                  :"457_roth",
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              COMMUTER =
                T.let(
                  :commuter,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              CUSTOM_POST_TAX =
                T.let(
                  :custom_post_tax,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              CUSTOM_PRE_TAX =
                T.let(
                  :custom_pre_tax,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              FSA_DEPENDENT_CARE =
                T.let(
                  :fsa_dependent_care,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              FSA_MEDICAL =
                T.let(
                  :fsa_medical,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              HSA_POST =
                T.let(
                  :hsa_post,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              HSA_PRE =
                T.let(
                  :hsa_pre,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              S125_DENTAL =
                T.let(
                  :s125_dental,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              S125_MEDICAL =
                T.let(
                  :s125_medical,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              S125_VISION =
                T.let(
                  :s125_vision,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              SIMPLE =
                T.let(
                  :simple,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )
              SIMPLE_IRA =
                T.let(
                  :simple_ira,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module PaymentMethod
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHECK =
              T.let(
                :check,
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol
              )
            DIRECT_DEPOSIT =
              T.let(
                :direct_deposit,
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod::TaggedSymbol
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
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :amount

            sig { params(amount: Integer).void }
            attr_writer :amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :employer

            sig { params(employer: T::Boolean).void }
            attr_writer :employer

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                amount: Integer,
                employer: T::Boolean,
                name: String,
                type:
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(amount: nil, employer: nil, name: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  amount: Integer,
                  employer: T::Boolean,
                  name: String,
                  type:
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FEDERAL =
                T.let(
                  :federal,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol
                )
              FICA =
                T.let(
                  :fica,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol
                )
              LOCAL =
                T.let(
                  :local,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol
                )
              STATE =
                T.let(
                  :state,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF_CYCLE_PAYROLL =
              T.let(
                :off_cycle_payroll,
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol
              )
            ONE_TIME_PAYMENT =
              T.let(
                :one_time_payment,
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol
              )
            REGULAR_PAYROLL =
              T.let(
                :regular_payroll,
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
