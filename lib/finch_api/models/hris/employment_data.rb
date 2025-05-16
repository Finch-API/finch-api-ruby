# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module EmploymentData
        extend FinchAPI::Internal::Type::Union

        variant -> { FinchAPI::HRIS::EmploymentData::UnionMember0 }

        variant -> { FinchAPI::HRIS::EmploymentData::BatchError }

        class UnionMember0 < FinchAPI::Internal::Type::BaseModel
          # @!attribute id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String]
          required :id, String

          # @!attribute class_code
          #   Worker's compensation classification code for this employee
          #
          #   @return [String, nil]
          required :class_code, String, nil?: true

          # @!attribute custom_fields
          #   Custom fields for the individual. These are fields which are defined by the
          #   employer in the system. Custom fields are not currently supported for assisted
          #   connections.
          #
          #   @return [Array<FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField>, nil]
          required :custom_fields,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField]
                   },
                   nil?: true

          # @!attribute department
          #   The department object.
          #
          #   @return [FinchAPI::HRIS::EmploymentData::UnionMember0::Department, nil]
          required :department, -> { FinchAPI::HRIS::EmploymentData::UnionMember0::Department }, nil?: true

          # @!attribute employment
          #   The employment object.
          #
          #   @return [FinchAPI::HRIS::EmploymentData::UnionMember0::Employment, nil]
          required :employment, -> { FinchAPI::HRIS::EmploymentData::UnionMember0::Employment }, nil?: true

          # @!attribute employment_status
          #   The detailed employment status of the individual. Available options: `active`,
          #   `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          #
          #   @return [Symbol, FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus, nil]
          required :employment_status,
                   enum: -> { FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus },
                   nil?: true

          # @!attribute end_date
          #
          #   @return [String, nil]
          required :end_date, String, nil?: true

          # @!attribute first_name
          #   The legal first name of the individual.
          #
          #   @return [String, nil]
          required :first_name, String, nil?: true

          # @!attribute is_active
          #   `true` if the individual an an active employee or contractor at the company.
          #
          #   @return [Boolean, nil]
          required :is_active, FinchAPI::Internal::Type::Boolean, nil?: true

          # @!attribute last_name
          #   The legal last name of the individual.
          #
          #   @return [String, nil]
          required :last_name, String, nil?: true

          # @!attribute latest_rehire_date
          #
          #   @return [String, nil]
          required :latest_rehire_date, String, nil?: true

          # @!attribute location
          #
          #   @return [FinchAPI::Location, nil]
          required :location, -> { FinchAPI::Location }, nil?: true

          # @!attribute manager
          #   The manager object representing the manager of the individual within the org.
          #
          #   @return [FinchAPI::HRIS::EmploymentData::UnionMember0::Manager, nil]
          required :manager, -> { FinchAPI::HRIS::EmploymentData::UnionMember0::Manager }, nil?: true

          # @!attribute middle_name
          #   The legal middle name of the individual.
          #
          #   @return [String, nil]
          required :middle_name, String, nil?: true

          # @!attribute start_date
          #
          #   @return [String, nil]
          required :start_date, String, nil?: true

          # @!attribute title
          #   The current title of the individual.
          #
          #   @return [String, nil]
          required :title, String, nil?: true

          # @!attribute work_id
          #   @deprecated
          #
          #   This field is deprecated in favour of `source_id`
          #
          #   @return [String, nil]
          required :work_id, String, nil?: true

          # @!attribute income
          #   The employee's income as reported by the provider. This may not always be
          #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
          #   depending on what information the provider returns.
          #
          #   @return [FinchAPI::Income, nil]
          optional :income, -> { FinchAPI::Income }, nil?: true

          # @!attribute income_history
          #   The array of income history.
          #
          #   @return [Array<FinchAPI::Income, nil>, nil]
          optional :income_history,
                   -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Income, nil?: true] },
                   nil?: true

          # @!attribute source_id
          #   The source system's unique employment identifier for this individual
          #
          #   @return [String, nil]
          optional :source_id, String, nil?: true

          # @!method initialize(id:, class_code:, custom_fields:, department:, employment:, employment_status:, end_date:, first_name:, is_active:, last_name:, latest_rehire_date:, location:, manager:, middle_name:, start_date:, title:, work_id:, income: nil, income_history: nil, source_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::HRIS::EmploymentData::UnionMember0} for more details.
          #
          #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @param class_code [String, nil] Worker's compensation classification code for this employee
          #
          #   @param custom_fields [Array<FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField>, nil] Custom fields for the individual. These are fields which are defined by the empl
          #
          #   @param department [FinchAPI::HRIS::EmploymentData::UnionMember0::Department, nil] The department object.
          #
          #   @param employment [FinchAPI::HRIS::EmploymentData::UnionMember0::Employment, nil] The employment object.
          #
          #   @param employment_status [Symbol, FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus, nil] The detailed employment status of the individual. Available options: `active`, `
          #
          #   @param end_date [String, nil]
          #
          #   @param first_name [String, nil] The legal first name of the individual.
          #
          #   @param is_active [Boolean, nil] `true` if the individual an an active employee or contractor at the company.
          #
          #   @param last_name [String, nil] The legal last name of the individual.
          #
          #   @param latest_rehire_date [String, nil]
          #
          #   @param location [FinchAPI::Location, nil]
          #
          #   @param manager [FinchAPI::HRIS::EmploymentData::UnionMember0::Manager, nil] The manager object representing the manager of the individual within the org.
          #
          #   @param middle_name [String, nil] The legal middle name of the individual.
          #
          #   @param start_date [String, nil]
          #
          #   @param title [String, nil] The current title of the individual.
          #
          #   @param work_id [String, nil] This field is deprecated in favour of `source_id`
          #
          #   @param income [FinchAPI::Income, nil] The employee's income as reported by the provider. This may not always be annual
          #
          #   @param income_history [Array<FinchAPI::Income, nil>, nil] The array of income history.
          #
          #   @param source_id [String, nil] The source system's unique employment identifier for this individual

          class CustomField < FinchAPI::Internal::Type::BaseModel
            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute value
            #
            #   @return [String, Array<Object>, Object, Float, Boolean, nil]
            optional :value,
                     union: -> { FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::Value },
                     nil?: true

            # @!method initialize(name: nil, value: nil)
            #   @param name [String, nil]
            #   @param value [String, Array<Object>, Object, Float, Boolean, nil]

            # @see FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField#value
            module Value
              extend FinchAPI::Internal::Type::Union

              variant String

              variant -> {
                FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::Value::UnionMember1Array
              }

              variant FinchAPI::Internal::Type::Unknown

              variant Float

              variant FinchAPI::Internal::Type::Boolean

              # @!method self.variants
              #   @return [Array(String, Array<Object>, Object, Float, Boolean)]

              define_sorbet_constant!(:Variants) do
                T.type_alias { T.nilable(T.any(String, T::Array[T.anything], T.anything, Float, T::Boolean)) }
              end

              # @type [FinchAPI::Internal::Type::Converter]
              UnionMember1Array = FinchAPI::Internal::Type::ArrayOf[FinchAPI::Internal::Type::Unknown]
            end
          end

          # @see FinchAPI::HRIS::EmploymentData::UnionMember0#department
          class Department < FinchAPI::Internal::Type::BaseModel
            # @!attribute name
            #   The name of the department associated with the individual.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!method initialize(name:)
            #   The department object.
            #
            #   @param name [String, nil] The name of the department associated with the individual.
          end

          # @see FinchAPI::HRIS::EmploymentData::UnionMember0#employment
          class Employment < FinchAPI::Internal::Type::BaseModel
            # @!attribute subtype
            #   The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            #
            #   @return [Symbol, FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype, nil]
            required :subtype,
                     enum: -> { FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype },
                     nil?: true

            # @!attribute type
            #   The main employment type of the individual.
            #
            #   @return [Symbol, FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type, nil]
            required :type,
                     enum: -> {
                       FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type
                     },
                     nil?: true

            # @!method initialize(subtype:, type:)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::HRIS::EmploymentData::UnionMember0::Employment} for more details.
            #
            #   The employment object.
            #
            #   @param subtype [Symbol, FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype, nil] The secondary employment type of the individual. Options: `full_time`, `part_tim
            #
            #   @param type [Symbol, FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type, nil] The main employment type of the individual.

            # The secondary employment type of the individual. Options: `full_time`,
            # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            #
            # @see FinchAPI::HRIS::EmploymentData::UnionMember0::Employment#subtype
            module Subtype
              extend FinchAPI::Internal::Type::Enum

              FULL_TIME = :full_time
              INTERN = :intern
              PART_TIME = :part_time
              TEMP = :temp
              SEASONAL = :seasonal
              INDIVIDUAL_CONTRACTOR = :individual_contractor

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The main employment type of the individual.
            #
            # @see FinchAPI::HRIS::EmploymentData::UnionMember0::Employment#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              EMPLOYEE = :employee
              CONTRACTOR = :contractor

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The detailed employment status of the individual. Available options: `active`,
          # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          #
          # @see FinchAPI::HRIS::EmploymentData::UnionMember0#employment_status
          module EmploymentStatus
            extend FinchAPI::Internal::Type::Enum

            ACTIVE = :active
            DECEASED = :deceased
            LEAVE = :leave
            ONBOARDING = :onboarding
            PREHIRE = :prehire
            RETIRED = :retired
            TERMINATED = :terminated

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::HRIS::EmploymentData::UnionMember0#manager
          class Manager < FinchAPI::Internal::Type::BaseModel
            # @!attribute id
            #   A stable Finch `id` (UUID v4) for an individual in the company.
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   The manager object representing the manager of the individual within the org.
            #
            #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
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

        # @!method self.variants
        #   @return [Array(FinchAPI::HRIS::EmploymentData::UnionMember0, FinchAPI::HRIS::EmploymentData::BatchError)]

        define_sorbet_constant!(:Variants) do
          T.type_alias do
            T.any(FinchAPI::HRIS::EmploymentData::UnionMember0, FinchAPI::HRIS::EmploymentData::BatchError)
          end
        end
      end
    end
  end
end
