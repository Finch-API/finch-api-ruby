# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class DirectoryCreateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute [r] body
        #   Array of individuals to create. Takes all combined fields from `/individual` and
        #     `/employment` endpoints. All fields are optional.
        #
        #   @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>, nil]
        optional :body, -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body] }

        # @!parse
        #   # @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>]
        #   attr_writer :body

        # @!parse
        #   # @param body [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(body: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class Body < FinchAPI::BaseModel
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
          #   @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField>, nil]
          optional :custom_fields,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField] }

          # @!parse
          #   # @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField>]
          #   attr_writer :custom_fields

          # @!attribute department
          #   The department object.
          #
          #   @return [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, nil]
          optional :department,
                   -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department },
                   nil?: true

          # @!attribute dob
          #
          #   @return [String, nil]
          optional :dob, String, nil?: true

          # @!attribute emails
          #
          #   @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email>, nil]
          optional :emails,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email] },
                   nil?: true

          # @!attribute employment
          #   The employment object.
          #
          #   @return [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, nil]
          optional :employment,
                   -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment },
                   nil?: true

          # @!attribute employment_status
          #   The detailed employment status of the individual.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus, nil]
          optional :employment_status,
                   enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus },
                   nil?: true

          # @!attribute encrypted_ssn
          #   Social Security Number of the individual in **encrypted** format. This field is
          #     only available with the `ssn` scope enabled and the
          #     `options: { include: ['ssn'] }` param set in the body.
          #
          #   @return [String, nil]
          optional :encrypted_ssn, String, nil?: true

          # @!attribute end_date
          #
          #   @return [String, nil]
          optional :end_date, String, nil?: true

          # @!attribute ethnicity
          #   The EEOC-defined ethnicity of the individual.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity, nil]
          optional :ethnicity,
                   enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity },
                   nil?: true

          # @!attribute first_name
          #   The legal first name of the individual.
          #
          #   @return [String, nil]
          optional :first_name, String, nil?: true

          # @!attribute gender
          #   The gender of the individual.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender, nil]
          optional :gender, enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender }, nil?: true

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
          #   @return [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, nil]
          optional :manager, -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager }, nil?: true

          # @!attribute middle_name
          #   The legal middle name of the individual.
          #
          #   @return [String, nil]
          optional :middle_name, String, nil?: true

          # @!attribute phone_numbers
          #
          #   @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber, nil>, nil]
          optional :phone_numbers,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber, nil?: true] },
                   nil?: true

          # @!attribute preferred_name
          #   The preferred name of the individual.
          #
          #   @return [String, nil]
          optional :preferred_name, String, nil?: true

          # @!attribute residence
          #
          #   @return [FinchAPI::Models::Location, nil]
          optional :residence, -> { FinchAPI::Models::Location }, nil?: true

          # @!attribute [r] source_id
          #   The source system's unique employment identifier for this individual
          #
          #   @return [String, nil]
          optional :source_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :source_id

          # @!attribute ssn
          #   Social Security Number of the individual. This field is only available with the
          #     `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          #     body.
          #     [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
          #
          #   @return [String, nil]
          optional :ssn, String, nil?: true

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
          #   # @param custom_fields [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField>]
          #   # @param department [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, nil]
          #   # @param dob [String, nil]
          #   # @param emails [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email>, nil]
          #   # @param employment [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, nil]
          #   # @param employment_status [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus, nil]
          #   # @param encrypted_ssn [String, nil]
          #   # @param end_date [String, nil]
          #   # @param ethnicity [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity, nil]
          #   # @param first_name [String, nil]
          #   # @param gender [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender, nil]
          #   # @param income [FinchAPI::Models::Income, nil]
          #   # @param income_history [Array<FinchAPI::Models::Income, nil>, nil]
          #   # @param is_active [Boolean, nil]
          #   # @param last_name [String, nil]
          #   # @param latest_rehire_date [String, nil]
          #   # @param location [FinchAPI::Models::Location, nil]
          #   # @param manager [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, nil]
          #   # @param middle_name [String, nil]
          #   # @param phone_numbers [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber, nil>, nil]
          #   # @param preferred_name [String, nil]
          #   # @param residence [FinchAPI::Models::Location, nil]
          #   # @param source_id [String]
          #   # @param ssn [String, nil]
          #   # @param start_date [String, nil]
          #   # @param title [String, nil]
          #   #
          #   def initialize(
          #     class_code: nil,
          #     custom_fields: nil,
          #     department: nil,
          #     dob: nil,
          #     emails: nil,
          #     employment: nil,
          #     employment_status: nil,
          #     encrypted_ssn: nil,
          #     end_date: nil,
          #     ethnicity: nil,
          #     first_name: nil,
          #     gender: nil,
          #     income: nil,
          #     income_history: nil,
          #     is_active: nil,
          #     last_name: nil,
          #     latest_rehire_date: nil,
          #     location: nil,
          #     manager: nil,
          #     middle_name: nil,
          #     phone_numbers: nil,
          #     preferred_name: nil,
          #     residence: nil,
          #     source_id: nil,
          #     ssn: nil,
          #     start_date: nil,
          #     title: nil,
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

          class Email < FinchAPI::BaseModel
            # @!attribute [r] data
            #
            #   @return [String, nil]
            optional :data, String

            # @!parse
            #   # @return [String]
            #   attr_writer :data

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type },
                     nil?: true

            # @!parse
            #   # @param data [String]
            #   # @param type [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type, nil]
            #   #
            #   def initialize(data: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            # @abstract
            #
            class Type < FinchAPI::Enum
              WORK = :work
              PERSONAL = :personal

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class Employment < FinchAPI::BaseModel
            # @!attribute subtype
            #   The secondary employment type of the individual. Options: `full_time`,
            #     `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype, nil]
            optional :subtype,
                     enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype },
                     nil?: true

            # @!attribute type
            #   The main employment type of the individual.
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type },
                     nil?: true

            # @!parse
            #   # The employment object.
            #   #
            #   # @param subtype [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype, nil]
            #   # @param type [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type, nil]
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

          # @abstract
          #
          # The EEOC-defined ethnicity of the individual.
          class Ethnicity < FinchAPI::Enum
            ASIAN = :asian
            WHITE = :white
            BLACK_OR_AFRICAN_AMERICAN = :black_or_african_american
            NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER = :native_hawaiian_or_pacific_islander
            AMERICAN_INDIAN_OR_ALASKA_NATIVE = :american_indian_or_alaska_native
            HISPANIC_OR_LATINO = :hispanic_or_latino
            TWO_OR_MORE_RACES = :two_or_more_races
            DECLINE_TO_SPECIFY = :decline_to_specify

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # The gender of the individual.
          class Gender < FinchAPI::Enum
            FEMALE = :female
            MALE = :male
            OTHER = :other
            DECLINE_TO_SPECIFY = :decline_to_specify

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

          class PhoneNumber < FinchAPI::BaseModel
            # @!attribute [r] data
            #
            #   @return [String, nil]
            optional :data, String

            # @!parse
            #   # @return [String]
            #   attr_writer :data

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type },
                     nil?: true

            # @!parse
            #   # @param data [String]
            #   # @param type [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type, nil]
            #   #
            #   def initialize(data: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            # @abstract
            #
            class Type < FinchAPI::Enum
              WORK = :work
              PERSONAL = :personal

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
end
