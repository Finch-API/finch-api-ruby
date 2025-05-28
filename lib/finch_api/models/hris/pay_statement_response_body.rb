# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module PayStatementResponseBody
        extend FinchAPI::Internal::Type::Union

        variant -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember0 }

        variant -> { FinchAPI::HRIS::PayStatementResponseBody::BatchError }

        variant -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember2 }

        class UnionMember0 < FinchAPI::Internal::Type::BaseModel
          # @!attribute paging
          #
          #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::Paging]
          required :paging, -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::Paging }

          # @!attribute pay_statements
          #
          #   @return [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement>]
          required :pay_statements,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement]
                   }

          # @!method initialize(paging:, pay_statements:)
          #   @param paging [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::Paging]
          #   @param pay_statements [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement>]

          # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0#paging
          class Paging < FinchAPI::Internal::Type::BaseModel
            # @!attribute offset
            #   The current start index of the returned list of elements
            #
            #   @return [Integer]
            required :offset, Integer

            # @!attribute count
            #   The total number of elements for the entire query (not just the given page)
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!method initialize(offset:, count: nil)
            #   @param offset [Integer] The current start index of the returned list of elements
            #
            #   @param count [Integer] The total number of elements for the entire query (not just the given page)
          end

          class PayStatement < FinchAPI::Internal::Type::BaseModel
            # @!attribute earnings
            #   The array of earnings objects associated with this pay statement
            #
            #   @return [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning, nil>, nil]
            required :earnings,
                     -> {
                       FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning,
                                                         nil?: true]
                     },
                     nil?: true

            # @!attribute employee_deductions
            #   The array of deductions objects associated with this pay statement.
            #
            #   @return [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction, nil>, nil]
            required :employee_deductions,
                     -> {
                       FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction,
                                                         nil?: true]
                     },
                     nil?: true

            # @!attribute employer_contributions
            #
            #   @return [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution, nil>, nil]
            required :employer_contributions,
                     -> {
                       FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution,
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
            #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod, nil]
            required :payment_method,
                     enum: -> {
                       FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod
                     },
                     nil?: true

            # @!attribute taxes
            #   The array of taxes objects associated with this pay statement.
            #
            #   @return [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax, nil>, nil]
            required :taxes,
                     -> {
                       FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax,
                                                         nil?: true]
                     },
                     nil?: true

            # @!attribute total_hours
            #   The number of hours worked for this pay period
            #
            #   @return [Float, nil]
            required :total_hours, Float, nil?: true

            # @!attribute type
            #   The type of the payment associated with the pay statement.
            #
            #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type, nil]
            required :type,
                     enum: -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type },
                     nil?: true

            # @!method initialize(earnings:, employee_deductions:, employer_contributions:, gross_pay:, individual_id:, net_pay:, payment_method:, taxes:, total_hours:, type:)
            #   @param earnings [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning, nil>, nil] The array of earnings objects associated with this pay statement
            #
            #   @param employee_deductions [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction, nil>, nil] The array of deductions objects associated with this pay statement.
            #
            #   @param employer_contributions [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution, nil>, nil]
            #
            #   @param gross_pay [FinchAPI::Models::Money, nil]
            #
            #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company
            #
            #   @param net_pay [FinchAPI::Models::Money, nil]
            #
            #   @param payment_method [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::PaymentMethod, nil] The payment method.
            #
            #   @param taxes [Array<FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax, nil>, nil] The array of taxes objects associated with this pay statement.
            #
            #   @param total_hours [Float, nil] The number of hours worked for this pay period
            #
            #   @param type [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Type, nil] The type of the payment associated with the pay statement.

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
              #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type, nil]
              required :type,
                       enum: -> {
                         FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type
                       },
                       nil?: true

              # @!attribute attributes
              #
              #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes, nil]
              optional :attributes,
                       -> {
                         FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes
                       },
                       nil?: true

              # @!method initialize(amount:, currency:, hours:, name:, type:, attributes: nil)
              #   Some parameter documentations has been truncated, see
              #   {FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning}
              #   for more details.
              #
              #   @param amount [Integer, nil] The earnings amount in cents.
              #
              #   @param currency [String, nil] The earnings currency code.
              #
              #   @param hours [Float, nil] The number of hours associated with this earning. (For salaried employees, this
              #
              #   @param name [String, nil] The exact name of the deduction from the pay statement.
              #
              #   @param type [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Type, nil] The type of earning.
              #
              #   @param attributes [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes, nil]

              # The type of earning.
              #
              # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning#type
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

              # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning#attributes
              class Attributes < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #
                #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata]
                required :metadata,
                         -> {
                           FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata
                         }

                # @!method initialize(metadata:)
                #   @param metadata [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata]

                # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes#metadata
                class Metadata < FinchAPI::Internal::Type::BaseModel
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
                  #   {FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Earning::Attributes::Metadata}
                  #   for more details.
                  #
                  #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
                end
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
              #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes, nil]
              optional :attributes,
                       -> {
                         FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes
                       },
                       nil?: true

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
              #   @param attributes [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes, nil]

              # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction#attributes
              class Attributes < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #
                #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata]
                required :metadata,
                         -> {
                           FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata
                         }

                # @!method initialize(metadata:)
                #   @param metadata [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata]

                # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes#metadata
                class Metadata < FinchAPI::Internal::Type::BaseModel
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
                  #   {FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployeeDeduction::Attributes::Metadata}
                  #   for more details.
                  #
                  #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
                end
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
              #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes, nil]
              optional :attributes,
                       -> {
                         FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes
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
              #   @param attributes [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes, nil]

              # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution#attributes
              class Attributes < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #
                #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata]
                required :metadata,
                         -> {
                           FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata
                         }

                # @!method initialize(metadata:)
                #   @param metadata [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata]

                # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes#metadata
                class Metadata < FinchAPI::Internal::Type::BaseModel
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
                  #   {FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::EmployerContribution::Attributes::Metadata}
                  #   for more details.
                  #
                  #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
                end
              end
            end

            # The payment method.
            #
            # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement#payment_method
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
              #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type, nil]
              required :type,
                       enum: -> {
                         FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type
                       },
                       nil?: true

              # @!attribute amount
              #   The tax amount in cents.
              #
              #   @return [Integer, nil]
              optional :amount, Integer, nil?: true

              # @!attribute attributes
              #
              #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes, nil]
              optional :attributes,
                       -> {
                         FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes
                       },
                       nil?: true

              # @!method initialize(currency:, employer:, name:, type:, amount: nil, attributes: nil)
              #   @param currency [String, nil] The currency code.
              #
              #   @param employer [Boolean, nil] `true` if the amount is paid by the employers.
              #
              #   @param name [String, nil] The exact name of tax from the pay statement.
              #
              #   @param type [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Type, nil] The type of taxes.
              #
              #   @param amount [Integer, nil] The tax amount in cents.
              #
              #   @param attributes [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes, nil]

              # The type of taxes.
              #
              # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax#type
              module Type
                extend FinchAPI::Internal::Type::Enum

                STATE = :state
                FEDERAL = :federal
                LOCAL = :local
                FICA = :fica

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax#attributes
              class Attributes < FinchAPI::Internal::Type::BaseModel
                # @!attribute metadata
                #
                #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata]
                required :metadata,
                         -> {
                           FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata
                         }

                # @!method initialize(metadata:)
                #   @param metadata [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata]

                # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes#metadata
                class Metadata < FinchAPI::Internal::Type::BaseModel
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
                  #   {FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement::Tax::Attributes::Metadata}
                  #   for more details.
                  #
                  #   @param metadata [Hash{Symbol=>Object, nil}] The metadata to be attached to the entity by existing rules. It is a key-value p
                end
              end
            end

            # The type of the payment associated with the pay statement.
            #
            # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0::PayStatement#type
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

        class BatchError < FinchAPI::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [Float]
          required :code, Float

          # @!attribute message
          #
          #   @return [String]
          required :message, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute finch_code
          #
          #   @return [String, nil]
          optional :finch_code, String

          # @!method initialize(code:, message:, name:, finch_code: nil)
          #   @param code [Float]
          #   @param message [String]
          #   @param name [String]
          #   @param finch_code [String]
        end

        class UnionMember2 < FinchAPI::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [Float, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::Code]
          required :code, enum: -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Code }

          # @!attribute finch_code
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::FinchCode]
          required :finch_code, enum: -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::FinchCode }

          # @!attribute message
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::Message]
          required :message, enum: -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Message }

          # @!attribute name
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::Name]
          required :name, enum: -> { FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::Name }

          # @!method initialize(code:, finch_code:, message:, name:)
          #   @param code [Float, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::Code]
          #   @param finch_code [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::FinchCode]
          #   @param message [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::Message]
          #   @param name [Symbol, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2::Name]

          # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2#code
          module Code
            extend FinchAPI::Internal::Type::Enum

            CODE_202 = 202

            # @!method self.values
            #   @return [Array<Float>]
          end

          # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2#finch_code
          module FinchCode
            extend FinchAPI::Internal::Type::Enum

            DATA_SYNC_IN_PROGRESS = :data_sync_in_progress

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2#message
          module Message
            extend FinchAPI::Internal::Type::Enum

            THE_PAY_STATEMENTS_FOR_THIS_PAYMENT_ARE_BEING_FETCHED_PLEASE_CHECK_BACK_LATER =
              :"The pay statements for this payment are being fetched. Please check back later."

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2#name
          module Name
            extend FinchAPI::Internal::Type::Enum

            ACCEPTED = :accepted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0, FinchAPI::Models::HRIS::PayStatementResponseBody::BatchError, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2)]
      end
    end
  end
end
