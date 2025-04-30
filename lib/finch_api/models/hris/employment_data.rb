# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class EmploymentData < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute class_code
        #   Worker's compensation classification code for this employee
        #
        #   @return [String, nil]
        optional :class_code, String, nil?: true

        # @!attribute custom_fields
        #   Custom fields for the individual. These are fields which are defined by the
        #   employer in the system.
        #
        #   @return [Array<FinchAPI::Models::HRIS::EmploymentData::CustomField>, nil]
        optional :custom_fields,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::EmploymentData::CustomField] },
                 nil?: true

        # @!attribute department
        #   The department object.
        #
        #   @return [FinchAPI::Models::HRIS::EmploymentData::Department, nil]
        optional :department, -> { FinchAPI::Models::HRIS::EmploymentData::Department }, nil?: true

        # @!attribute employment
        #   The employment object.
        #
        #   @return [FinchAPI::Models::HRIS::EmploymentData::Employment, nil]
        optional :employment, -> { FinchAPI::Models::HRIS::EmploymentData::Employment }, nil?: true

        # @!attribute employment_status
        #   The detailed employment status of the individual. Available options: `active`,
        #   `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus, nil]
        optional :employment_status,
                 enum: -> { FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus },
                 nil?: true

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String, nil?: true

        # @!attribute first_name
        #   The legal first name of the individual.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute income
        #   The employee's income as reported by the provider. This may not always be
        #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
        #   depending on what information the provider returns.
        #
        #   @return [FinchAPI::Models::Income, nil]
        optional :income, -> { FinchAPI::Models::Income }, nil?: true

        # @!attribute income_history
        #   The array of income history.
        #
        #   @return [Array<FinchAPI::Models::Income, nil>, nil]
        optional :income_history,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Income, nil?: true] },
                 nil?: true

        # @!attribute is_active
        #   `true` if the individual an an active employee or contractor at the company.
        #
        #   @return [Boolean, nil]
        optional :is_active, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute last_name
        #   The legal last name of the individual.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute latest_rehire_date
        #
        #   @return [String, nil]
        optional :latest_rehire_date, String, nil?: true

        # @!attribute location
        #
        #   @return [FinchAPI::Models::Location, nil]
        optional :location, -> { FinchAPI::Models::Location }, nil?: true

        # @!attribute manager
        #   The manager object representing the manager of the individual within the org.
        #
        #   @return [FinchAPI::Models::HRIS::EmploymentData::Manager, nil]
        optional :manager, -> { FinchAPI::Models::HRIS::EmploymentData::Manager }, nil?: true

        # @!attribute middle_name
        #   The legal middle name of the individual.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute source_id
        #   The source system's unique employment identifier for this individual
        #
        #   @return [String, nil]
        optional :source_id, String, nil?: true

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String, nil?: true

        # @!attribute title
        #   The current title of the individual.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!attribute work_id
        #   @deprecated
        #
        #   This field is deprecated in favour of `source_id`
        #
        #   @return [String, nil]
        optional :work_id, String, nil?: true

        # @!method initialize(id: nil, class_code: nil, custom_fields: nil, department: nil, employment: nil, employment_status: nil, end_date: nil, first_name: nil, income: nil, income_history: nil, is_active: nil, last_name: nil, latest_rehire_date: nil, location: nil, manager: nil, middle_name: nil, source_id: nil, start_date: nil, title: nil, work_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::EmploymentData} for more details.
        #
        #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @param class_code [String, nil] Worker's compensation classification code for this employee
        #
        #   @param custom_fields [Array<FinchAPI::Models::HRIS::EmploymentData::CustomField>, nil] Custom fields for the individual. These are fields which are defined by the empl
        #   ...
        #
        #   @param department [FinchAPI::Models::HRIS::EmploymentData::Department, nil] The department object.
        #
        #   @param employment [FinchAPI::Models::HRIS::EmploymentData::Employment, nil] The employment object.
        #
        #   @param employment_status [Symbol, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus, nil] The detailed employment status of the individual. Available options: `active`, `
        #   ...
        #
        #   @param end_date [String, nil]
        #
        #   @param first_name [String, nil] The legal first name of the individual.
        #
        #   @param income [FinchAPI::Models::Income, nil] The employee's income as reported by the provider. This may not always be annual
        #   ...
        #
        #   @param income_history [Array<FinchAPI::Models::Income, nil>, nil] The array of income history.
        #
        #   @param is_active [Boolean, nil] `true` if the individual an an active employee or contractor at the company.
        #
        #   @param last_name [String, nil] The legal last name of the individual.
        #
        #   @param latest_rehire_date [String, nil]
        #
        #   @param location [FinchAPI::Models::Location, nil]
        #
        #   @param manager [FinchAPI::Models::HRIS::EmploymentData::Manager, nil] The manager object representing the manager of the individual within the org.
        #
        #   @param middle_name [String, nil] The legal middle name of the individual.
        #
        #   @param source_id [String, nil] The source system's unique employment identifier for this individual
        #
        #   @param start_date [String, nil]
        #
        #   @param title [String, nil] The current title of the individual.
        #
        #   @param work_id [String, nil] This field is deprecated in favour of `source_id`

        class CustomField < FinchAPI::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute value
          #
          #   @return [Object, nil]
          optional :value, FinchAPI::Internal::Type::Unknown

          # @!method initialize(name: nil, value: nil)
          #   @param name [String]
          #   @param value [Object]
        end

        # @see FinchAPI::Models::HRIS::EmploymentData#department
        class Department < FinchAPI::Internal::Type::BaseModel
          # @!attribute name
          #   The name of the department associated with the individual.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!method initialize(name: nil)
          #   The department object.
          #
          #   @param name [String, nil] The name of the department associated with the individual.
        end

        # @see FinchAPI::Models::HRIS::EmploymentData#employment
        class Employment < FinchAPI::Internal::Type::BaseModel
          # @!attribute subtype
          #   The secondary employment type of the individual. Options: `full_time`,
          #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype, nil]
          optional :subtype, enum: -> { FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype }, nil?: true

          # @!attribute type
          #   The main employment type of the individual.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::HRIS::EmploymentData::Employment::Type }, nil?: true

          # @!method initialize(subtype: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::EmploymentData::Employment} for more details.
          #
          #   The employment object.
          #
          #   @param subtype [Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype, nil] The secondary employment type of the individual. Options: `full_time`, `part_tim
          #   ...
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Type, nil] The main employment type of the individual.

          # The secondary employment type of the individual. Options: `full_time`,
          # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
          #
          # @see FinchAPI::Models::HRIS::EmploymentData::Employment#subtype
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
          # @see FinchAPI::Models::HRIS::EmploymentData::Employment#type
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
        # @see FinchAPI::Models::HRIS::EmploymentData#employment_status
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

        # @see FinchAPI::Models::HRIS::EmploymentData#manager
        class Manager < FinchAPI::Internal::Type::BaseModel
          # @!attribute id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   The manager object representing the manager of the individual within the org.
          #
          #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        end
      end
    end
  end
end
