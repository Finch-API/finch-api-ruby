# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatement < FinchAPI::Internal::Type::BaseModel
        # @!attribute earnings
        #   The array of earnings objects associated with this pay statement
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::Earning, nil>, nil]
        required :earnings,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement::Earning, nil?: true] },
                 nil?: true

        # @!attribute employee_deductions
        #   The array of deductions objects associated with this pay statement.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction, nil>, nil]
        required :employee_deductions,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement::EmployeeDeduction,
                                                     nil?: true]
                 },
                 nil?: true

        # @!attribute employer_contributions
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::EmployerContribution, nil>, nil]
        required :employer_contributions,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement::EmployerContribution,
                                                     nil?: true]
                 },
                 nil?: true

        # @!attribute gross_pay
        #
        #   @return [FinchAPI::Models::Money, nil]
        required :gross_pay, -> { FinchAPI::Money }, nil?: true

        # @!attribute individual_id
        #   A stable Finch `id` (UUID v4) for an individual in the company
        #
        #   @return [String]
        required :individual_id, String

        # @!attribute net_pay
        #
        #   @return [FinchAPI::Models::Money, nil]
        required :net_pay, -> { FinchAPI::Money }, nil?: true

        # @!attribute payment_method
        #   The payment method.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::PaymentMethod, nil]
        required :payment_method, enum: -> { FinchAPI::HRIS::PayStatement::PaymentMethod }, nil?: true

        # @!attribute taxes
        #   The array of taxes objects associated with this pay statement.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement::Tax, nil>, nil]
        required :taxes,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement::Tax, nil?: true] },
                 nil?: true

        # @!attribute total_hours
        #   The number of hours worked for this pay period
        #
        #   @return [Float, nil]
        required :total_hours, Float, nil?: true

        # @!attribute type
        #   The type of the payment associated with the pay statement.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::Type, nil]
        required :type, enum: -> { FinchAPI::HRIS::PayStatement::Type }, nil?: true

        # @!method initialize(earnings:, employee_deductions:, employer_contributions:, gross_pay:, individual_id:, net_pay:, payment_method:, taxes:, total_hours:, type:)
        #   @param earnings [Array<FinchAPI::Models::HRIS::PayStatement::Earning, nil>, nil] The array of earnings objects associated with this pay statement
        #
        #   @param employee_deductions [Array<FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction, nil>, nil] The array of deductions objects associated with this pay statement.
        #
        #   @param employer_contributions [Array<FinchAPI::Models::HRIS::PayStatement::EmployerContribution, nil>, nil]
        #
        #   @param gross_pay [FinchAPI::Models::Money, nil]
        #
        #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company
        #
        #   @param net_pay [FinchAPI::Models::Money, nil]
        #
        #   @param payment_method [Symbol, FinchAPI::Models::HRIS::PayStatement::PaymentMethod, nil] The payment method.
        #
        #   @param taxes [Array<FinchAPI::Models::HRIS::PayStatement::Tax, nil>, nil] The array of taxes objects associated with this pay statement.
        #
        #   @param total_hours [Float, nil] The number of hours worked for this pay period
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::PayStatement::Type, nil] The type of the payment associated with the pay statement.

        class Earning < FinchAPI::Internal::Type::BaseModel
          # @!attribute amount
          #   The earnings amount in cents.
          #
          #   @return [Integer, nil]
          required :amount, Integer, nil?: true

          # @!attribute currency
          #   The earnings currency code.
          #
          #   @return [String, nil]
          required :currency, String, nil?: true

          # @!attribute hours
          #   The number of hours associated with this earning. (For salaried employees, this
          #   could be hours per pay period, `0` or `null`, depending on the provider).
          #
          #   @return [Float, nil]
          required :hours, Float, nil?: true

          # @!attribute name
          #   The exact name of the deduction from the pay statement.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute type
          #   The type of earning.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::Earning::Type, nil]
          required :type, enum: -> { FinchAPI::HRIS::PayStatement::Earning::Type }, nil?: true

          # @!attribute attributes
          #
          #   @return [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes, nil]
          optional :attributes, -> { FinchAPI::HRIS::PayStatement::Earning::Attributes }, nil?: true

          # @!method initialize(amount:, currency:, hours:, name:, type:, attributes: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::PayStatement::Earning} for more details.
          #
          #   @param amount [Integer, nil] The earnings amount in cents.
          #
          #   @param currency [String, nil] The earnings currency code.
          #
          #   @param hours [Float, nil] The number of hours associated with this earning. (For salaried employees, this
          #
          #   @param name [String, nil] The exact name of the deduction from the pay statement.
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::PayStatement::Earning::Type, nil] The type of earning.
          #
          #   @param attributes [FinchAPI::Models::HRIS::PayStatement::Earning::Attributes, nil]

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::Models::HRIS::PayStatement::Earning#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute metadata
            #   The metadata to be attached to the entity by existing rules. It is a key-value
            #   pairs where the values can be of any type (string, number, boolean, object,
            #   array, etc.).
            #
            #   @return [Hash{Symbol=>Object, nil}]
            required :metadata,
                     FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

            # @!method initialize(metadata:)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::HRIS::PayStatement::Earning::Attributes} for more details.
            #
            #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
          end
        end

        class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
          # @!attribute amount
          #   The deduction amount in cents.
          #
          #   @return [Integer, nil]
          required :amount, Integer, nil?: true

          # @!attribute currency
          #   The deduction currency.
          #
          #   @return [String, nil]
          required :currency, String, nil?: true

          # @!attribute name
          #   The deduction name from the pay statement.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute pre_tax
          #   Boolean indicating if the deduction is pre-tax.
          #
          #   @return [Boolean, nil]
          required :pre_tax, FinchAPI::Internal::Type::Boolean, nil?: true

          # @!attribute type
          #   Type of benefit.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
          required :type, enum: -> { FinchAPI::HRIS::BenefitType }, nil?: true

          # @!attribute attributes
          #
          #   @return [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes, nil]
          optional :attributes, -> { FinchAPI::HRIS::PayStatement::EmployeeDeduction::Attributes }, nil?: true

          # @!method initialize(amount:, currency:, name:, pre_tax:, type:, attributes: nil)
          #   @param amount [Integer, nil] The deduction amount in cents.
          #
          #   @param currency [String, nil] The deduction currency.
          #
          #   @param name [String, nil] The deduction name from the pay statement.
          #
          #   @param pre_tax [Boolean, nil] Boolean indicating if the deduction is pre-tax.
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Type of benefit.
          #
          #   @param attributes [FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes, nil]

          # @see FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute metadata
            #   The metadata to be attached to the entity by existing rules. It is a key-value
            #   pairs where the values can be of any type (string, number, boolean, object,
            #   array, etc.).
            #
            #   @return [Hash{Symbol=>Object, nil}]
            required :metadata,
                     FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

            # @!method initialize(metadata:)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::HRIS::PayStatement::EmployeeDeduction::Attributes} for more
            #   details.
            #
            #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
          end
        end

        class EmployerContribution < FinchAPI::Internal::Type::BaseModel
          # @!attribute currency
          #   The contribution currency.
          #
          #   @return [String, nil]
          required :currency, String, nil?: true

          # @!attribute name
          #   The contribution name from the pay statement.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute type
          #   Type of benefit.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
          required :type, enum: -> { FinchAPI::HRIS::BenefitType }, nil?: true

          # @!attribute amount
          #   The contribution amount in cents.
          #
          #   @return [Integer, nil]
          optional :amount, Integer, nil?: true

          # @!attribute attributes
          #
          #   @return [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes, nil]
          optional :attributes,
                   -> {
                     FinchAPI::HRIS::PayStatement::EmployerContribution::Attributes
                   },
                   nil?: true

          # @!method initialize(currency:, name:, type:, amount: nil, attributes: nil)
          #   @param currency [String, nil] The contribution currency.
          #
          #   @param name [String, nil] The contribution name from the pay statement.
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Type of benefit.
          #
          #   @param amount [Integer, nil] The contribution amount in cents.
          #
          #   @param attributes [FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes, nil]

          # @see FinchAPI::Models::HRIS::PayStatement::EmployerContribution#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute metadata
            #   The metadata to be attached to the entity by existing rules. It is a key-value
            #   pairs where the values can be of any type (string, number, boolean, object,
            #   array, etc.).
            #
            #   @return [Hash{Symbol=>Object, nil}]
            required :metadata,
                     FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

            # @!method initialize(metadata:)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::HRIS::PayStatement::EmployerContribution::Attributes} for
            #   more details.
            #
            #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
          end
        end

        # The payment method.
        #
        # @see FinchAPI::Models::HRIS::PayStatement#payment_method
        module PaymentMethod
          extend FinchAPI::Internal::Type::Enum

          CHECK = :check
          DIRECT_DEPOSIT = :direct_deposit
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Tax < FinchAPI::Internal::Type::BaseModel
          # @!attribute currency
          #   The currency code.
          #
          #   @return [String, nil]
          required :currency, String, nil?: true

          # @!attribute employer
          #   `true` if the amount is paid by the employers.
          #
          #   @return [Boolean, nil]
          required :employer, FinchAPI::Internal::Type::Boolean, nil?: true

          # @!attribute name
          #   The exact name of tax from the pay statement.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute type
          #   The type of taxes.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatement::Tax::Type, nil]
          required :type, enum: -> { FinchAPI::HRIS::PayStatement::Tax::Type }, nil?: true

          # @!attribute amount
          #   The tax amount in cents.
          #
          #   @return [Integer, nil]
          optional :amount, Integer, nil?: true

          # @!attribute attributes
          #
          #   @return [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes, nil]
          optional :attributes, -> { FinchAPI::HRIS::PayStatement::Tax::Attributes }, nil?: true

          # @!method initialize(currency:, employer:, name:, type:, amount: nil, attributes: nil)
          #   @param currency [String, nil] The currency code.
          #
          #   @param employer [Boolean, nil] `true` if the amount is paid by the employers.
          #
          #   @param name [String, nil] The exact name of tax from the pay statement.
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::PayStatement::Tax::Type, nil] The type of taxes.
          #
          #   @param amount [Integer, nil] The tax amount in cents.
          #
          #   @param attributes [FinchAPI::Models::HRIS::PayStatement::Tax::Attributes, nil]

          # The type of taxes.
          #
          # @see FinchAPI::Models::HRIS::PayStatement::Tax#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            STATE = :state
            FEDERAL = :federal
            LOCAL = :local
            FICA = :fica

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::Models::HRIS::PayStatement::Tax#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute metadata
            #   The metadata to be attached to the entity by existing rules. It is a key-value
            #   pairs where the values can be of any type (string, number, boolean, object,
            #   array, etc.).
            #
            #   @return [Hash{Symbol=>Object, nil}]
            required :metadata,
                     FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

            # @!method initialize(metadata:)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::HRIS::PayStatement::Tax::Attributes} for more details.
            #
            #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
          end
        end

        # The type of the payment associated with the pay statement.
        #
        # @see FinchAPI::Models::HRIS::PayStatement#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          OFF_CYCLE_PAYROLL = :off_cycle_payroll
          ONE_TIME_PAYMENT = :one_time_payment
          REGULAR_PAYROLL = :regular_payroll

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
