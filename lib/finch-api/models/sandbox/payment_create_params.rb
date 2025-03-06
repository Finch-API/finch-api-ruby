# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute [r] end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!parse
        #   # @return [String]
        #   attr_writer :end_date

        # @!attribute [r] pay_statements
        #
        #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement>, nil]
        optional :pay_statements,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement] }

        # @!parse
        #   # @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement>]
        #   attr_writer :pay_statements

        # @!attribute [r] start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!parse
        #   # @return [String]
        #   attr_writer :start_date

        # @!parse
        #   # @param end_date [String]
        #   # @param pay_statements [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement>]
        #   # @param start_date [String]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(end_date: nil, pay_statements: nil, start_date: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class PayStatement < FinchAPI::BaseModel
          # @!attribute earnings
          #   The array of earnings objects associated with this pay statement
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning, nil>, nil]
          optional :earnings,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning, nil?: true] },
                   nil?: true

          # @!attribute employee_deductions
          #   The array of deductions objects associated with this pay statement.
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction, nil>, nil]
          optional :employee_deductions,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction, nil?: true] },
                   nil?: true

          # @!attribute employer_contributions
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution, nil>, nil]
          optional :employer_contributions,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution, nil?: true] },
                   nil?: true

          # @!attribute gross_pay
          #
          #   @return [FinchAPI::Models::Money, nil]
          optional :gross_pay, -> { FinchAPI::Models::Money }, nil?: true

          # @!attribute [r] individual_id
          #   A stable Finch `id` (UUID v4) for an individual in the company
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!attribute net_pay
          #
          #   @return [FinchAPI::Models::Money, nil]
          optional :net_pay, -> { FinchAPI::Models::Money }, nil?: true

          # @!attribute payment_method
          #   The payment method.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod, nil]
          optional :payment_method,
                   enum: -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod },
                   nil?: true

          # @!attribute taxes
          #   The array of taxes objects associated with this pay statement.
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax, nil>, nil]
          optional :taxes,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax, nil?: true] },
                   nil?: true

          # @!attribute total_hours
          #   The number of hours worked for this pay period
          #
          #   @return [Float, nil]
          optional :total_hours, Float, nil?: true

          # @!attribute type
          #   The type of the payment associated with the pay statement.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type, nil]
          optional :type,
                   enum: -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type },
                   nil?: true

          # @!parse
          #   # @param earnings [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning, nil>, nil]
          #   # @param employee_deductions [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction, nil>, nil]
          #   # @param employer_contributions [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution, nil>, nil]
          #   # @param gross_pay [FinchAPI::Models::Money, nil]
          #   # @param individual_id [String]
          #   # @param net_pay [FinchAPI::Models::Money, nil]
          #   # @param payment_method [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod, nil]
          #   # @param taxes [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax, nil>, nil]
          #   # @param total_hours [Float, nil]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type, nil]
          #   #
          #   def initialize(
          #     earnings: nil,
          #     employee_deductions: nil,
          #     employer_contributions: nil,
          #     gross_pay: nil,
          #     individual_id: nil,
          #     net_pay: nil,
          #     payment_method: nil,
          #     taxes: nil,
          #     total_hours: nil,
          #     type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          class Earning < FinchAPI::BaseModel
            # @!attribute amount
            #   The earnings amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes },
                     nil?: true

            # @!attribute currency
            #   The earnings currency code.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute hours
            #   The number of hours associated with this earning. (For salaried employees, this
            #     could be hours per pay period, `0` or `null`, depending on the provider).
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
            #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type },
                     nil?: true

            # @!parse
            #   # @param amount [Integer, nil]
            #   # @param attributes [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes, nil]
            #   # @param currency [String, nil]
            #   # @param hours [Float, nil]
            #   # @param name [String, nil]
            #   # @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type, nil]
            #   #
            #   def initialize(amount: nil, attributes: nil, currency: nil, hours: nil, name: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            class Attributes < FinchAPI::BaseModel
              # @!attribute [r] metadata
              #
              #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata, nil]
              optional :metadata,
                       -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata }

              # @!parse
              #   # @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Attributes::Metadata]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::BaseModel) -> void

              class Metadata < FinchAPI::BaseModel
                # @!attribute [r] metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #     pairs where the values can be of any type (string, number, boolean, object,
                #     array, etc.).
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :metadata, FinchAPI::HashOf[FinchAPI::Unknown]

                # @!parse
                #   # @return [Hash{Symbol=>Object}]
                #   attr_writer :metadata

                # @!parse
                #   # @param metadata [Hash{Symbol=>Object}]
                #   #
                #   def initialize(metadata: nil, **) = super

                # def initialize: (Hash | FinchAPI::BaseModel) -> void
              end
            end

            # @abstract
            #
            # The type of earning.
            class Type < FinchAPI::Enum
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

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class EmployeeDeduction < FinchAPI::BaseModel
            # @!attribute amount
            #   The deduction amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes },
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
            optional :pre_tax, FinchAPI::BooleanModel, nil?: true

            # @!attribute type
            #   Type of benefit.
            #
            #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
            optional :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

            # @!parse
            #   # @param amount [Integer, nil]
            #   # @param attributes [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes, nil]
            #   # @param currency [String, nil]
            #   # @param name [String, nil]
            #   # @param pre_tax [Boolean, nil]
            #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
            #   #
            #   def initialize(amount: nil, attributes: nil, currency: nil, name: nil, pre_tax: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            class Attributes < FinchAPI::BaseModel
              # @!attribute [r] metadata
              #
              #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata, nil]
              optional :metadata,
                       -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata }

              # @!parse
              #   # @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Attributes::Metadata]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::BaseModel) -> void

              class Metadata < FinchAPI::BaseModel
                # @!attribute [r] metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #     pairs where the values can be of any type (string, number, boolean, object,
                #     array, etc.).
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :metadata, FinchAPI::HashOf[FinchAPI::Unknown]

                # @!parse
                #   # @return [Hash{Symbol=>Object}]
                #   attr_writer :metadata

                # @!parse
                #   # @param metadata [Hash{Symbol=>Object}]
                #   #
                #   def initialize(metadata: nil, **) = super

                # def initialize: (Hash | FinchAPI::BaseModel) -> void
              end
            end
          end

          class EmployerContribution < FinchAPI::BaseModel
            # @!attribute amount
            #   The contribution amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes },
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
            #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
            optional :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

            # @!parse
            #   # @param amount [Integer, nil]
            #   # @param attributes [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes, nil]
            #   # @param currency [String, nil]
            #   # @param name [String, nil]
            #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
            #   #
            #   def initialize(amount: nil, attributes: nil, currency: nil, name: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            class Attributes < FinchAPI::BaseModel
              # @!attribute [r] metadata
              #
              #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata, nil]
              optional :metadata,
                       -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata }

              # @!parse
              #   # @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Attributes::Metadata]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::BaseModel) -> void

              class Metadata < FinchAPI::BaseModel
                # @!attribute [r] metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #     pairs where the values can be of any type (string, number, boolean, object,
                #     array, etc.).
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :metadata, FinchAPI::HashOf[FinchAPI::Unknown]

                # @!parse
                #   # @return [Hash{Symbol=>Object}]
                #   attr_writer :metadata

                # @!parse
                #   # @param metadata [Hash{Symbol=>Object}]
                #   #
                #   def initialize(metadata: nil, **) = super

                # def initialize: (Hash | FinchAPI::BaseModel) -> void
              end
            end
          end

          # @abstract
          #
          # The payment method.
          class PaymentMethod < FinchAPI::Enum
            CHECK = :check
            DIRECT_DEPOSIT = :direct_deposit

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class Tax < FinchAPI::BaseModel
            # @!attribute amount
            #   The tax amount in cents.
            #
            #   @return [Integer, nil]
            optional :amount, Integer, nil?: true

            # @!attribute attributes
            #
            #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes },
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
            optional :employer, FinchAPI::BooleanModel, nil?: true

            # @!attribute name
            #   The exact name of tax from the pay statement.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute type
            #   The type of taxes.
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type },
                     nil?: true

            # @!parse
            #   # @param amount [Integer, nil]
            #   # @param attributes [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes, nil]
            #   # @param currency [String, nil]
            #   # @param employer [Boolean, nil]
            #   # @param name [String, nil]
            #   # @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type, nil]
            #   #
            #   def initialize(amount: nil, attributes: nil, currency: nil, employer: nil, name: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            class Attributes < FinchAPI::BaseModel
              # @!attribute [r] metadata
              #
              #   @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata, nil]
              optional :metadata,
                       -> { FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata }

              # @!parse
              #   # @return [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Attributes::Metadata]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::BaseModel) -> void

              class Metadata < FinchAPI::BaseModel
                # @!attribute [r] metadata
                #   The metadata to be attached to the entity by existing rules. It is a key-value
                #     pairs where the values can be of any type (string, number, boolean, object,
                #     array, etc.).
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :metadata, FinchAPI::HashOf[FinchAPI::Unknown]

                # @!parse
                #   # @return [Hash{Symbol=>Object}]
                #   attr_writer :metadata

                # @!parse
                #   # @param metadata [Hash{Symbol=>Object}]
                #   #
                #   def initialize(metadata: nil, **) = super

                # def initialize: (Hash | FinchAPI::BaseModel) -> void
              end
            end

            # @abstract
            #
            # The type of taxes.
            class Type < FinchAPI::Enum
              STATE = :state
              FEDERAL = :federal
              LOCAL = :local
              FICA = :fica

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          # @abstract
          #
          # The type of the payment associated with the pay statement.
          class Type < FinchAPI::Enum
            REGULAR_PAYROLL = :regular_payroll
            OFF_CYCLE_PAYROLL = :off_cycle_payroll
            ONE_TIME_PAYMENT = :one_time_payment

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
