# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Directory#create
      class DirectoryCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute body
        #   Array of individuals to create. Takes all combined fields from `/individual` and
        #   `/employment` endpoints. All fields are optional.
        #
        #   @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>, nil]
        optional :body,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body] }

        # @!method initialize(body: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Sandbox::DirectoryCreateParams} for more details.
        #
        #   @param body [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>] Array of individuals to create. Takes all combined fields from `/individual` and
        #   ...
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Body < FinchAPI::Internal::Type::BaseModel
          # @!attribute class_code
          #   Worker's compensation classification code for this employee
          #
          #   @return [String, nil]
          optional :class_code, String, nil?: true

          # @!attribute custom_fields
          #   Custom fields for the individual. These are fields which are defined by the
          #   employer in the system. Custom fields are not currently supported for assisted
          #   connections.
          #
          #   @return [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField>, nil]
          optional :custom_fields,
                   -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField] }

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
                   -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email] },
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
          #   only available with the `ssn` scope enabled and the
          #   `options: { include: ['ssn'] }` param set in the body.
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
                   -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber, nil?: true] },
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

          # @!attribute source_id
          #   The source system's unique employment identifier for this individual
          #
          #   @return [String, nil]
          optional :source_id, String

          # @!attribute ssn
          #   Social Security Number of the individual. This field is only available with the
          #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          #   body.
          #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
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

          # @!method initialize(class_code: nil, custom_fields: nil, department: nil, dob: nil, emails: nil, employment: nil, employment_status: nil, encrypted_ssn: nil, end_date: nil, ethnicity: nil, first_name: nil, gender: nil, income: nil, income_history: nil, is_active: nil, last_name: nil, latest_rehire_date: nil, location: nil, manager: nil, middle_name: nil, phone_numbers: nil, preferred_name: nil, residence: nil, source_id: nil, ssn: nil, start_date: nil, title: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::Sandbox::DirectoryCreateParams::Body} for more details.
          #
          #   @param class_code [String, nil] Worker's compensation classification code for this employee
          #
          #   @param custom_fields [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField>] Custom fields for the individual. These are fields which are defined by the empl
          #   ...
          #
          #   @param department [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, nil] The department object.
          #
          #   @param dob [String, nil]
          #
          #   @param emails [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email>, nil]
          #
          #   @param employment [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, nil] The employment object.
          #
          #   @param employment_status [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus, nil] The detailed employment status of the individual.
          #
          #   @param encrypted_ssn [String, nil] Social Security Number of the individual in **encrypted** format. This field is
          #   ...
          #
          #   @param end_date [String, nil]
          #
          #   @param ethnicity [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity, nil] The EEOC-defined ethnicity of the individual.
          #
          #   @param first_name [String, nil] The legal first name of the individual.
          #
          #   @param gender [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender, nil] The gender of the individual.
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
          #   @param manager [FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, nil] The manager object representing the manager of the individual within the org.
          #
          #   @param middle_name [String, nil] The legal middle name of the individual.
          #
          #   @param phone_numbers [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber, nil>, nil]
          #
          #   @param preferred_name [String, nil] The preferred name of the individual.
          #
          #   @param residence [FinchAPI::Models::Location, nil]
          #
          #   @param source_id [String] The source system's unique employment identifier for this individual
          #
          #   @param ssn [String, nil] Social Security Number of the individual. This field is only available with the
          #   ...
          #
          #   @param start_date [String, nil]
          #
          #   @param title [String, nil] The current title of the individual.

          class CustomField < FinchAPI::Internal::Type::BaseModel
            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute value
            #
            #   @return [Object, nil]
            optional :value, FinchAPI::Internal::Type::Unknown

            # @!method initialize(name: nil, value: nil)
            #   @param name [String, nil]
            #   @param value [Object]
          end

          # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body#department
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

          class Email < FinchAPI::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [String, nil]
            optional :data, String

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type },
                     nil?: true

            # @!method initialize(data: nil, type: nil)
            #   @param data [String]
            #   @param type [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type, nil]

            # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              WORK = :work
              PERSONAL = :personal

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body#employment
          class Employment < FinchAPI::Internal::Type::BaseModel
            # @!attribute subtype
            #   The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
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

            # @!method initialize(subtype: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment} for more
            #   details.
            #
            #   The employment object.
            #
            #   @param subtype [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype, nil] The secondary employment type of the individual. Options: `full_time`, `part_ti
            #   ...
            #
            #   @param type [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type, nil] The main employment type of the individual.

            # The secondary employment type of the individual. Options: `full_time`,
            # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            #
            # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment#subtype
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
            # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              EMPLOYEE = :employee
              CONTRACTOR = :contractor

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The detailed employment status of the individual.
          #
          # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body#employment_status
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

          # The EEOC-defined ethnicity of the individual.
          #
          # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body#ethnicity
          module Ethnicity
            extend FinchAPI::Internal::Type::Enum

            ASIAN = :asian
            WHITE = :white
            BLACK_OR_AFRICAN_AMERICAN = :black_or_african_american
            NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER = :native_hawaiian_or_pacific_islander
            AMERICAN_INDIAN_OR_ALASKA_NATIVE = :american_indian_or_alaska_native
            HISPANIC_OR_LATINO = :hispanic_or_latino
            TWO_OR_MORE_RACES = :two_or_more_races
            DECLINE_TO_SPECIFY = :decline_to_specify

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The gender of the individual.
          #
          # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body#gender
          module Gender
            extend FinchAPI::Internal::Type::Enum

            FEMALE = :female
            MALE = :male
            OTHER = :other
            DECLINE_TO_SPECIFY = :decline_to_specify

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body#manager
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

          class PhoneNumber < FinchAPI::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [String, nil]
            optional :data, String, nil?: true

            # @!attribute type
            #
            #   @return [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type, nil]
            optional :type,
                     enum: -> { FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type },
                     nil?: true

            # @!method initialize(data: nil, type: nil)
            #   @param data [String, nil]
            #   @param type [Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type, nil]

            # @see FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber#type
            module Type
              extend FinchAPI::Internal::Type::Enum

              WORK = :work
              PERSONAL = :personal

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
