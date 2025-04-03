# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatement < FinchAPI::Internal::Type::BaseModel
        # @!attribute earnings
        #   The array of earnings objects associated with this pay statement
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::Earning, nil>, nil]
        optional :earnings,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::PayStatement::Earning, nil?: true] },
                 nil?: true

        # @!attribute employee_deductions
        #   The array of deductions objects associated with this pay statement.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction, nil>, nil]
        optional :employee_deductions,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction, nil?: true] },
                 nil?: true

        # @!attribute employer_contributions
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::EmployerContribution, nil>, nil]
        optional :employer_contributions,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::PayStatement::EmployerContribution, nil?: true] },
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
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::PaymentMethod, nil]
        optional :payment_method, enum: -> { FinchAPI::Models::HRIS::PayStatement::PaymentMethod }, nil?: true

        # @!attribute taxes
        #   The array of taxes objects associated with this pay statement.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::Tax, nil>, nil]
        optional :taxes,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::PayStatement::Tax, nil?: true] },
                 nil?: true

        # @!attribute total_hours
        #   The number of hours worked for this pay period
        #
        #   @return [Float, nil]
        optional :total_hours, Float, nil?: true

        # @!attribute type
        #   The type of the payment associated with the pay statement.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::PayStatement::Type }, nil?: true

        # @!parse
        #   # @param earnings [Array<FinchAPI::Models::HRIS::PayStatement::Earning, nil>, nil]
        #   # @param employee_deductions [Array<FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction, nil>, nil]
        #   # @param employer_contributions [Array<FinchAPI::Models::HRIS::PayStatement::EmployerContribution, nil>, nil]
        #   # @param gross_pay [FinchAPI::Models::Money, nil]
        #   # @param individual_id [String]
        #   # @param net_pay [FinchAPI::Models::Money, nil]
        #   # @param payment_method [Symbol, FinchAPI::Models::HRIS::PayStatement::PaymentMethod, nil]
        #   # @param taxes [Array<FinchAPI::Models::HRIS::PayStatement::Tax, nil>, nil]
        #   # @param total_hours [Float, nil]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::PayStatement::Type, nil]
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

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        class Earning < FinchAPI::Internal::Type::BaseModel
          # @!attribute amount
          #   The earnings amount in cents.
          #
          #   @return [Integer, nil]
          optional :amount, Integer, nil?: true

          # @!attribute attributes
          #
          #   @return [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes, nil]
          optional :attributes, -> { FinchAPI::Models::HRIS::PayStatement::Earning::Attributes }, nil?: true

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
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::Earning::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::HRIS::PayStatement::Earning::Type }, nil?: true

          # @!parse
          #   # @param amount [Integer, nil]
          #   # @param attributes [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes, nil]
          #   # @param currency [String, nil]
          #   # @param hours [Float, nil]
          #   # @param name [String, nil]
          #   # @param type [Symbol, FinchAPI::Models::HRIS::PayStatement::Earning::Type, nil]
          #   #
          #   def initialize(amount: nil, attributes: nil, currency: nil, hours: nil, name: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::PayStatement::Earning#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] metadata
            #
            #   @return [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata, nil]
            optional :metadata, -> { FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata]
            #   attr_writer :metadata

            # @!parse
            #   # @param metadata [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes::Metadata]
            #   #
            #   def initialize(metadata: nil, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::HRIS::PayStatement::Earning::Attributes#metadata
            class Metadata < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] metadata
              #   The metadata to be attached to the entity by existing rules. It is a key-value
              #     pairs where the values can be of any type (string, number, boolean, object,
              #     array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [Hash{Symbol=>Object}]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
            end
          end

          # The type of earning.
          #
          # @see FinchAPI::Models::HRIS::PayStatement::Earning#type
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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
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
          #   @return [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes, nil]
          optional :attributes,
                   -> { FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes },
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
          optional :pre_tax, FinchAPI::Internal::Type::BooleanModel, nil?: true

          # @!attribute type
          #   Type of benefit.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
          optional :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

          # @!parse
          #   # @param amount [Integer, nil]
          #   # @param attributes [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes, nil]
          #   # @param currency [String, nil]
          #   # @param name [String, nil]
          #   # @param pre_tax [Boolean, nil]
          #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
          #   #
          #   def initialize(amount: nil, attributes: nil, currency: nil, name: nil, pre_tax: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] metadata
            #
            #   @return [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata, nil]
            optional :metadata, -> { FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata]
            #   attr_writer :metadata

            # @!parse
            #   # @param metadata [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes::Metadata]
            #   #
            #   def initialize(metadata: nil, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes#metadata
            class Metadata < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] metadata
              #   The metadata to be attached to the entity by existing rules. It is a key-value
              #     pairs where the values can be of any type (string, number, boolean, object,
              #     array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [Hash{Symbol=>Object}]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
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
          #   @return [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes, nil]
          optional :attributes,
                   -> { FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes },
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
          #   # @param attributes [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes, nil]
          #   # @param currency [String, nil]
          #   # @param name [String, nil]
          #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
          #   #
          #   def initialize(amount: nil, attributes: nil, currency: nil, name: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::PayStatement::EmployerContribution#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] metadata
            #
            #   @return [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata, nil]
            optional :metadata,
                     -> { FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata]
            #   attr_writer :metadata

            # @!parse
            #   # @param metadata [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes::Metadata]
            #   #
            #   def initialize(metadata: nil, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes#metadata
            class Metadata < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] metadata
              #   The metadata to be attached to the entity by existing rules. It is a key-value
              #     pairs where the values can be of any type (string, number, boolean, object,
              #     array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [Hash{Symbol=>Object}]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
            end
          end
        end

        # The payment method.
        #
        # @see FinchAPI::Models::HRIS::PayStatement#payment_method
        module PaymentMethod
          extend FinchAPI::Internal::Type::Enum

          CHECK = :check
          DIRECT_DEPOSIT = :direct_deposit

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class Tax < FinchAPI::Internal::Type::BaseModel
          # @!attribute amount
          #   The tax amount in cents.
          #
          #   @return [Integer, nil]
          optional :amount, Integer, nil?: true

          # @!attribute attributes
          #
          #   @return [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes, nil]
          optional :attributes, -> { FinchAPI::Models::HRIS::PayStatement::Tax::Attributes }, nil?: true

          # @!attribute currency
          #   The currency code.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute employer
          #   `true` if the amount is paid by the employers.
          #
          #   @return [Boolean, nil]
          optional :employer, FinchAPI::Internal::Type::BooleanModel, nil?: true

          # @!attribute name
          #   The exact name of tax from the pay statement.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute type
          #   The type of taxes.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::Tax::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::HRIS::PayStatement::Tax::Type }, nil?: true

          # @!parse
          #   # @param amount [Integer, nil]
          #   # @param attributes [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes, nil]
          #   # @param currency [String, nil]
          #   # @param employer [Boolean, nil]
          #   # @param name [String, nil]
          #   # @param type [Symbol, FinchAPI::Models::HRIS::PayStatement::Tax::Type, nil]
          #   #
          #   def initialize(amount: nil, attributes: nil, currency: nil, employer: nil, name: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::PayStatement::Tax#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] metadata
            #
            #   @return [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata, nil]
            optional :metadata, -> { FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata]
            #   attr_writer :metadata

            # @!parse
            #   # @param metadata [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes::Metadata]
            #   #
            #   def initialize(metadata: nil, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::HRIS::PayStatement::Tax::Attributes#metadata
            class Metadata < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] metadata
              #   The metadata to be attached to the entity by existing rules. It is a key-value
              #     pairs where the values can be of any type (string, number, boolean, object,
              #     array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :metadata

              # @!parse
              #   # @param metadata [Hash{Symbol=>Object}]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
            end
          end

          # The type of taxes.
          #
          # @see FinchAPI::Models::HRIS::PayStatement::Tax#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            STATE = :state
            FEDERAL = :federal
            LOCAL = :local
            FICA = :fica

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # The type of the payment associated with the pay statement.
        #
        # @see FinchAPI::Models::HRIS::PayStatement#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          REGULAR_PAYROLL = :regular_payroll
          OFF_CYCLE_PAYROLL = :off_cycle_payroll
          ONE_TIME_PAYMENT = :one_time_payment

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
