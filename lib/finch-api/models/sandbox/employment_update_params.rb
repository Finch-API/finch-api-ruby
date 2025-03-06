# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class EmploymentUpdateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute class_code
        #   Worker's compensation classification code for this employee
        #
        #   @return [String, nil]
        optional :class_code, String, nil?: true

        # @!attribute [r] custom_fields
        #   Custom fields for the individual. These are fields which are defined by the
        #     employer in the system. Custom fields are not currently supported for assisted
        #     connections.
        #
        #   @return [Array<FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField>, nil]
        optional :custom_fields,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField] }

        # @!parse
        #   # @return [Array<FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField>]
        #   attr_writer :custom_fields

        # @!attribute department
        #   The department object.
        #
        #   @return [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Department, nil]
        optional :department, -> { FinchAPI::Models::Sandbox::EmploymentUpdateParams::Department }, nil?: true

        # @!attribute employment
        #   The employment object.
        #
        #   @return [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment, nil]
        optional :employment, -> { FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment }, nil?: true

        # @!attribute employment_status
        #   The detailed employment status of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::EmploymentStatus, nil]
        optional :employment_status,
                 enum: -> { FinchAPI::Models::Sandbox::EmploymentUpdateParams::EmploymentStatus },
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
        #     annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
        #     depending on what information the provider returns.
        #
        #   @return [FinchAPI::Models::Income, nil]
        optional :income, -> { FinchAPI::Models::Income }, nil?: true

        # @!attribute income_history
        #   The array of income history.
        #
        #   @return [Array<FinchAPI::Models::Income, nil>, nil]
        optional :income_history, -> { FinchAPI::ArrayOf[FinchAPI::Models::Income, nil?: true] }, nil?: true

        # @!attribute is_active
        #   `true` if the individual an an active employee or contractor at the company.
        #
        #   @return [Boolean, nil]
        optional :is_active, FinchAPI::BooleanModel, nil?: true

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
        #   @return [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Manager, nil]
        optional :manager, -> { FinchAPI::Models::Sandbox::EmploymentUpdateParams::Manager }, nil?: true

        # @!attribute middle_name
        #   The legal middle name of the individual.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute [r] source_id
        #   The source system's unique employment identifier for this individual
        #
        #   @return [String, nil]
        optional :source_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :source_id

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String, nil?: true

        # @!attribute title
        #   The current title of the individual.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!parse
        #   # @param class_code [String, nil]
        #   # @param custom_fields [Array<FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField>]
        #   # @param department [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Department, nil]
        #   # @param employment [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment, nil]
        #   # @param employment_status [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::EmploymentStatus, nil]
        #   # @param end_date [String, nil]
        #   # @param first_name [String, nil]
        #   # @param income [FinchAPI::Models::Income, nil]
        #   # @param income_history [Array<FinchAPI::Models::Income, nil>, nil]
        #   # @param is_active [Boolean, nil]
        #   # @param last_name [String, nil]
        #   # @param latest_rehire_date [String, nil]
        #   # @param location [FinchAPI::Models::Location, nil]
        #   # @param manager [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Manager, nil]
        #   # @param middle_name [String, nil]
        #   # @param source_id [String]
        #   # @param start_date [String, nil]
        #   # @param title [String, nil]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     class_code: nil,
        #     custom_fields: nil,
        #     department: nil,
        #     employment: nil,
        #     employment_status: nil,
        #     end_date: nil,
        #     first_name: nil,
        #     income: nil,
        #     income_history: nil,
        #     is_active: nil,
        #     last_name: nil,
        #     latest_rehire_date: nil,
        #     location: nil,
        #     manager: nil,
        #     middle_name: nil,
        #     source_id: nil,
        #     start_date: nil,
        #     title: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class CustomField < FinchAPI::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute [r] value
          #
          #   @return [Object, nil]
          optional :value, FinchAPI::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :value

          # @!parse
          #   # @param name [String, nil]
          #   # @param value [Object]
          #   #
          #   def initialize(name: nil, value: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end

        class Department < FinchAPI::BaseModel
          # @!attribute name
          #   The name of the department associated with the individual.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!parse
          #   # The department object.
          #   #
          #   # @param name [String, nil]
          #   #
          #   def initialize(name: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end

        class Employment < FinchAPI::BaseModel
          # @!attribute subtype
          #   The secondary employment type of the individual. Options: `full_time`,
          #     `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment::Subtype, nil]
          optional :subtype,
                   enum: -> { FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment::Subtype },
                   nil?: true

          # @!attribute type
          #   The main employment type of the individual.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment::Type, nil]
          optional :type,
                   enum: -> { FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment::Type },
                   nil?: true

          # @!parse
          #   # The employment object.
          #   #
          #   # @param subtype [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment::Subtype, nil]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment::Type, nil]
          #   #
          #   def initialize(subtype: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # @abstract
          #
          # The secondary employment type of the individual. Options: `full_time`,
          #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
          class Subtype < FinchAPI::Enum
            FULL_TIME = :full_time
            INTERN = :intern
            PART_TIME = :part_time
            TEMP = :temp
            SEASONAL = :seasonal
            INDIVIDUAL_CONTRACTOR = :individual_contractor

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # The main employment type of the individual.
          class Type < FinchAPI::Enum
            EMPLOYEE = :employee
            CONTRACTOR = :contractor

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @abstract
        #
        # The detailed employment status of the individual.
        class EmploymentStatus < FinchAPI::Enum
          ACTIVE = :active
          DECEASED = :deceased
          LEAVE = :leave
          ONBOARDING = :onboarding
          PREHIRE = :prehire
          RETIRED = :retired
          TERMINATED = :terminated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class Manager < FinchAPI::BaseModel
          # @!attribute [r] id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!parse
          #   # The manager object representing the manager of the individual within the org.
          #   #
          #   # @param id [String]
          #   #
          #   def initialize(id: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
