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
        #   @return [Date, nil]
        optional :end_date, Date

        # @!attribute pay_statements
        #   Array of pay statements to include in the payment.
        #
        #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement>, nil]
        optional :pay_statements,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement]
                 }

        # @!attribute start_date
        #
        #   @return [Date, nil]
        optional :start_date, Date

        # @!method initialize(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        #   @param end_date [Date]
        #
        #   @param pay_statements [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement>] Array of pay statements to include in the payment.
        #
        #   @param start_date [Date]
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class PayStatement < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #
          #   @return [String]
          required :individual_id, String

          # @!attribute earnings
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning>, nil]
          optional :earnings,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning]
                   }

          # @!attribute employee_deductions
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction>, nil]
          optional :employee_deductions,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction]
                   }

          # @!attribute employer_contributions
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution>, nil]
          optional :employer_contributions,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution]
                   }

          # @!attribute gross_pay
          #
          #   @return [Integer, nil]
          optional :gross_pay, Integer

          # @!attribute net_pay
          #
          #   @return [Integer, nil]
          optional :net_pay, Integer

          # @!attribute payment_method
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod, nil]
          optional :payment_method,
                   enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod },
                   nil?: true

          # @!attribute taxes
          #
          #   @return [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax>, nil]
          optional :taxes,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax]
                   }

          # @!attribute total_hours
          #
          #   @return [Float, nil]
          optional :total_hours, Float

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type, nil]
          optional :type, enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Type }, nil?: true

          # @!method initialize(individual_id:, earnings: nil, employee_deductions: nil, employer_contributions: nil, gross_pay: nil, net_pay: nil, payment_method: nil, taxes: nil, total_hours: nil, type: nil)
          #   @param individual_id [String]
          #   @param earnings [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning>]
          #   @param employee_deductions [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction>]
          #   @param employer_contributions [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution>]
          #   @param gross_pay [Integer]
          #   @param net_pay [Integer]
          #   @param payment_method [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::PaymentMethod, nil]
          #   @param taxes [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax>]
          #   @param total_hours [Float]
          #   @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Type, nil]

          class Earning < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Integer, nil]
            optional :amount, Integer

            # @!attribute hours
            #
            #   @return [Float, nil]
            optional :hours, Float

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type, nil]
            optional :type, enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Earning::Type }

            # @!method initialize(amount: nil, hours: nil, name: nil, type: nil)
            #   @param amount [Integer]
            #   @param hours [Float]
            #   @param name [String]
            #   @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning::Type]

            # @see FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Earning#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              BONUS = :bonus
              COMMISSION = :commission
              DOUBLE_OVERTIME = :double_overtime
              OTHER = :other
              OVERTIME = :overtime
              PTO = :pto
              REIMBURSEMENT = :reimbursement
              SALARY = :salary
              SEVERANCE = :severance
              SICK = :sick
              TIPS = :tips
              WAGE = :wage
              TYPE_1099 = :"1099"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Integer, nil]
            optional :amount, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute pre_tax
            #
            #   @return [Boolean, nil]
            optional :pre_tax, FinchAPI::Internal::Type::Boolean

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type, nil]
            optional :type,
                     enum: -> {
                       FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type
                     }

            # @!method initialize(amount: nil, name: nil, pre_tax: nil, type: nil)
            #   @param amount [Integer]
            #   @param name [String]
            #   @param pre_tax [Boolean]
            #   @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction::Type]

            # @see FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployeeDeduction#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              TYPE_457 = :"457"
              TYPE_401K = :"401k"
              TYPE_401K_ROTH = :"401k_roth"
              TYPE_401K_LOAN = :"401k_loan"
              TYPE_403B = :"403b"
              TYPE_403B_ROTH = :"403b_roth"
              TYPE_457_ROTH = :"457_roth"
              COMMUTER = :commuter
              CUSTOM_POST_TAX = :custom_post_tax
              CUSTOM_PRE_TAX = :custom_pre_tax
              FSA_DEPENDENT_CARE = :fsa_dependent_care
              FSA_MEDICAL = :fsa_medical
              HSA_POST = :hsa_post
              HSA_PRE = :hsa_pre
              S125_DENTAL = :s125_dental
              S125_MEDICAL = :s125_medical
              S125_VISION = :s125_vision
              SIMPLE = :simple
              SIMPLE_IRA = :simple_ira

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class EmployerContribution < FinchAPI::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Integer, nil]
            optional :amount, Integer

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type, nil]
            optional :type,
                     enum: -> {
                       FinchAPI::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type
                     }

            # @!method initialize(amount: nil, name: nil, type: nil)
            #   @param amount [Integer]
            #   @param name [String]
            #   @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution::Type]

            # @see FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::EmployerContribution#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              TYPE_457 = :"457"
              TYPE_401K = :"401k"
              TYPE_401K_ROTH = :"401k_roth"
              TYPE_401K_LOAN = :"401k_loan"
              TYPE_403B = :"403b"
              TYPE_403B_ROTH = :"403b_roth"
              TYPE_457_ROTH = :"457_roth"
              COMMUTER = :commuter
              CUSTOM_POST_TAX = :custom_post_tax
              CUSTOM_PRE_TAX = :custom_pre_tax
              FSA_DEPENDENT_CARE = :fsa_dependent_care
              FSA_MEDICAL = :fsa_medical
              HSA_POST = :hsa_post
              HSA_PRE = :hsa_pre
              S125_DENTAL = :s125_dental
              S125_MEDICAL = :s125_medical
              S125_VISION = :s125_vision
              SIMPLE = :simple
              SIMPLE_IRA = :simple_ira

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement#payment_method
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
            #
            #   @return [Integer, nil]
            optional :amount, Integer

            # @!attribute employer
            #
            #   @return [Boolean, nil]
            optional :employer, FinchAPI::Internal::Type::Boolean

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type, nil]
            optional :type, enum: -> { FinchAPI::Sandbox::PaymentCreateParams::PayStatement::Tax::Type }

            # @!method initialize(amount: nil, employer: nil, name: nil, type: nil)
            #   @param amount [Integer]
            #   @param employer [Boolean]
            #   @param name [String]
            #   @param type [Symbol, FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax::Type]

            # @see FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement::Tax#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              FEDERAL = :federal
              FICA = :fica
              LOCAL = :local
              STATE = :state

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement#type
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
end
