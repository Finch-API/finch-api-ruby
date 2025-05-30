# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Payment#create
      class PaymentCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute pay_statements
        #
        #   @return [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement>, nil]
        optional :pay_statements,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement]
                 }

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        #   @param end_date [String]
        #   @param pay_statements [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement>]
        #   @param start_date [String]
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class PayStatement < FinchAPI::Internal::Type::BaseModel
          # @!attribute earnings
          #   The array of earnings objects associated with this pay statement
          #
          #   @return [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning, nil>, nil]
          optional :earnings,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning,
                                                       nil?: true]
                   },
                   nil?: true

          # @!attribute employee_deductions
          #   The array of deductions objects associated with this pay statement.
          #
          #   @return [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction, nil>, nil]
          optional :employee_deductions,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction,
                                                       nil?: true]
                   },
                   nil?: true

          # @!attribute employer_contributions
          #
          #   @return [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution, nil>, nil]
          optional :employer_contributions,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution,
                                                       nil?: true]
                   },
                   nil?: true

          # @!attribute gross_pay
          #
          #   @return [FinchAPI::Money, nil]
          optional :gross_pay, -> { FinchAPI::Money }, nil?: true

          # @!attribute individual_id
          #   A stable Finch `id` (UUID v4) for an individual in the company
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!attribute net_pay
          #
          #   @return [FinchAPI::Money, nil]
          optional :net_pay, -> { FinchAPI::Money }, nil?: true

          # @!attribute payment_method
          #   The payment method.
          #
          #   @return [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod, nil]
          optional :payment_method,
                   enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod },
                   nil?: true

          # @!attribute taxes
          #   The array of taxes objects associated with this pay statement.
          #
          #   @return [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax, nil>, nil]
          optional :taxes,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax,
                                                       nil?: true]
                   },
                   nil?: true

          # @!attribute total_hours
          #   The number of hours worked for this pay period
          #
          #   @return [Float, nil]
          optional :total_hours, Float, nil?: true

          # @!attribute type
          #   The type of the payment associated with the pay statement.
          #
          #   @return [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type, nil]
          optional :type, enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type }, nil?: true

          # @!method initialize(earnings: nil, employee_deductions: nil, employer_contributions: nil, gross_pay: nil, individual_id: nil, net_pay: nil, payment_method: nil, taxes: nil, total_hours: nil, type: nil)
          #   @param earnings [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning, nil>, nil] The array of earnings objects associated with this pay statement
          #
          #   @param employee_deductions [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction, nil>, nil] The array of deductions objects associated with this pay statement.
          #
          #   @param employer_contributions [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution, nil>, nil]
          #
          #   @param gross_pay [FinchAPI::Money, nil]
          #
          #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company
          #
          #   @param net_pay [FinchAPI::Money, nil]
          #
          #   @param payment_method [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod, nil] The payment method.
          #
          #   @param taxes [Array<FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax, nil>, nil] The array of taxes objects associated with this pay statement.
          #
          #   @param total_hours [Float, nil] The number of hours worked for this pay period
          #
          #   @param type [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type, nil] The type of the payment associated with the pay statement.

          class Earning < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #   The earnings amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes },
                     nil?: true

            # @!attribute currency
            #   The earnings currency code.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute hours
            #   The number of hours associated with this earning. (For salaried employees, this
            #   could be hours per pay period, `0` or `null`, depending on the provider).
            #
            #   @return [Float, nil]
            optional :hours, Float, nil?: true

            # @!attribute name
            #   The exact name of the deduction from the pay statement.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute type
            #   The type of earning.
            #
            #   @return [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type },
                     nil?: true

            # @!method initialize(amount: nil, attributes: nil, currency: nil, hours: nil, name: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning} for more
            #   details.
            #
            #   @param amount [Integer, nil] The earnings amount in cents.
            #
            #   @param attributes [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes, nil]
            #
            #   @param currency [String, nil] The earnings currency code.
            #
            #   @param hours [Float, nil] The number of hours associated with this earning. (For salaried employees, this
            #
            #   @param name [String, nil] The exact name of the deduction from the pay statement.
            #
            #   @param type [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type, nil] The type of earning.

            # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning#attributes
            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute metadata
              #
              #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata, nil]
              optional :metadata,
                       -> {
                         FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata
                       }

              # @!method initialize(metadata: nil)
              #   @param metadata [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata]

              # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes#metadata
              class Metadata < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #   pairs where the values can be of any type (string, number, boolean, object,
                #   array, etc.).
                #
                #   @return [Hash{Symbol=>Object, nil}, nil]
                optional :metadata,
                         FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

                # @!method initialize(metadata: nil)
                #   Some parameter documentations has been truncated, see
                #   {FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata}
                #   for more details.
                #
                #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
              end
            end

            # The type of earning.
            #
            # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning#type
            module Type
              extend FinchAPI::Internal::Type::Enum

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
              TYPE_1099 = :"1099"
              OTHER = :other

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #   The deduction amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes, nil]
            optional :attributes,
                     -> {
                       FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes
                     },
                     nil?: true

            # @!attribute currency
            #   The deduction currency.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute name
            #   The deduction name from the pay statement.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute pre_tax
            #   Boolean indicating if the deduction is pre-tax.
            #
            #   @return [Boolean, nil]
            optional :pre_tax, FinchAPI::Internal::Type::Boolean, nil?: true

            # @!attribute type
            #   Type of benefit.
            #
            #   @return [Symbol, FinchAPI::HRIS::BenefitType, nil]
            optional :type, enum: -> { FinchAPI::HRIS::BenefitType }, nil?: true

            # @!method initialize(amount: nil, attributes: nil, currency: nil, name: nil, pre_tax: nil, type: nil)
            #   @param amount [Integer, nil] The deduction amount in cents.
            #
            #   @param attributes [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes, nil]
            #
            #   @param currency [String, nil] The deduction currency.
            #
            #   @param name [String, nil] The deduction name from the pay statement.
            #
            #   @param pre_tax [Boolean, nil] Boolean indicating if the deduction is pre-tax.
            #
            #   @param type [Symbol, FinchAPI::HRIS::BenefitType, nil] Type of benefit.

            # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction#attributes
            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute metadata
              #
              #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata, nil]
              optional :metadata,
                       -> {
                         FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata
                       }

              # @!method initialize(metadata: nil)
              #   @param metadata [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata]

              # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes#metadata
              class Metadata < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #   pairs where the values can be of any type (string, number, boolean, object,
                #   array, etc.).
                #
                #   @return [Hash{Symbol=>Object, nil}, nil]
                optional :metadata,
                         FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

                # @!method initialize(metadata: nil)
                #   Some parameter documentations has been truncated, see
                #   {FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata}
                #   for more details.
                #
                #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
              end
            end
          end

          class EmployerContribution < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #   The contribution amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes, nil]
            optional :attributes,
                     -> {
                       FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes
                     },
                     nil?: true

            # @!attribute currency
            #   The contribution currency.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute name
            #   The contribution name from the pay statement.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute type
            #   Type of benefit.
            #
            #   @return [Symbol, FinchAPI::HRIS::BenefitType, nil]
            optional :type, enum: -> { FinchAPI::HRIS::BenefitType }, nil?: true

            # @!method initialize(amount: nil, attributes: nil, currency: nil, name: nil, type: nil)
            #   @param amount [Integer, nil] The contribution amount in cents.
            #
            #   @param attributes [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes, nil]
            #
            #   @param currency [String, nil] The contribution currency.
            #
            #   @param name [String, nil] The contribution name from the pay statement.
            #
            #   @param type [Symbol, FinchAPI::HRIS::BenefitType, nil] Type of benefit.

            # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution#attributes
            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute metadata
              #
              #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata, nil]
              optional :metadata,
                       -> {
                         FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata
                       }

              # @!method initialize(metadata: nil)
              #   @param metadata [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata]

              # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes#metadata
              class Metadata < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #   pairs where the values can be of any type (string, number, boolean, object,
                #   array, etc.).
                #
                #   @return [Hash{Symbol=>Object, nil}, nil]
                optional :metadata,
                         FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

                # @!method initialize(metadata: nil)
                #   Some parameter documentations has been truncated, see
                #   {FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata}
                #   for more details.
                #
                #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
              end
            end
          end

          # The payment method.
          #
          # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement#payment_method
          module PaymentMethod
            extend FinchAPI::Internal::Type::Enum

            CHECK = :check
            DIRECT_DEPOSIT = :direct_deposit
            OTHER = :other

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Tax < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #   The tax amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes },
                     nil?: true

            # @!attribute currency
            #   The currency code.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute employer
            #   `true` if the amount is paid by the employers.
            #
            #   @return [Boolean, nil]
            optional :employer, FinchAPI::Internal::Type::Boolean, nil?: true

            # @!attribute name
            #   The exact name of tax from the pay statement.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute type
            #   The type of taxes.
            #
            #   @return [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type, nil]
            optional :type,
                     enum: -> {
                       FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type
                     },
                     nil?: true

            # @!method initialize(amount: nil, attributes: nil, currency: nil, employer: nil, name: nil, type: nil)
            #   @param amount [Integer, nil] The tax amount in cents.
            #
            #   @param attributes [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes, nil]
            #
            #   @param currency [String, nil] The currency code.
            #
            #   @param employer [Boolean, nil] `true` if the amount is paid by the employers.
            #
            #   @param name [String, nil] The exact name of tax from the pay statement.
            #
            #   @param type [Symbol, FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type, nil] The type of taxes.

            # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax#attributes
            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute metadata
              #
              #   @return [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata, nil]
              optional :metadata,
                       -> {
                         FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata
                       }

              # @!method initialize(metadata: nil)
              #   @param metadata [FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata]

              # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes#metadata
              class Metadata < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #   pairs where the values can be of any type (string, number, boolean, object,
                #   array, etc.).
                #
                #   @return [Hash{Symbol=>Object, nil}, nil]
                optional :metadata,
                         FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

                # @!method initialize(metadata: nil)
                #   Some parameter documentations has been truncated, see
                #   {FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata}
                #   for more details.
                #
                #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
              end
            end

            # The type of taxes.
            #
            # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              STATE = :state
              FEDERAL = :federal
              LOCAL = :local
              FICA = :fica

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The type of the payment associated with the pay statement.
          #
          # @see FinchAPI::Sandbox::PaymentCreateParams::PayStatement#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            REGULAR_PAYROLL = :regular_payroll
            OFF_CYCLE_PAYROLL = :off_cycle_payroll
            ONE_TIME_PAYMENT = :one_time_payment

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
