# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class DirectoryCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # Array of individuals to create. Takes all combined fields from `/individual` and
        #   `/employment` endpoints. All fields are optional.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body])) }
        def body
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body])
            .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body])
        end
        def body=(_)
        end

        sig do
          params(
            body: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                body: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Body < FinchAPI::BaseModel
          # Worker's compensation classification code for this employee
          sig { returns(T.nilable(String)) }
          def class_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def class_code=(_)
          end

          # Custom fields for the individual. These are fields which are defined by the
          #   employer in the system. Custom fields are not currently supported for assisted
          #   connections.
          sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField])) }
          def custom_fields
          end

          sig do
            params(_: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField])
              .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField])
          end
          def custom_fields=(_)
          end

          # The department object.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department)) }
          def department
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department))
              .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department))
          end
          def department=(_)
          end

          sig { returns(T.nilable(String)) }
          def dob
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def dob=(_)
          end

          sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email])) }
          def emails
          end

          sig do
            params(_: T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email]))
              .returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email]))
          end
          def emails=(_)
          end

          # The employment object.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment)) }
          def employment
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment))
              .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment))
          end
          def employment=(_)
          end

          # The detailed employment status of the individual.
          sig { returns(T.nilable(Symbol)) }
          def employment_status
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def employment_status=(_)
          end

          # Social Security Number of the individual in **encrypted** format. This field is
          #   only available with the `ssn` scope enabled and the
          #   `options: { include: ['ssn'] }` param set in the body.
          sig { returns(T.nilable(String)) }
          def encrypted_ssn
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def encrypted_ssn=(_)
          end

          sig { returns(T.nilable(String)) }
          def end_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def end_date=(_)
          end

          # The EEOC-defined ethnicity of the individual.
          sig { returns(T.nilable(Symbol)) }
          def ethnicity
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def ethnicity=(_)
          end

          # The legal first name of the individual.
          sig { returns(T.nilable(String)) }
          def first_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def first_name=(_)
          end

          # The gender of the individual.
          sig { returns(T.nilable(Symbol)) }
          def gender
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def gender=(_)
          end

          # The employee's income as reported by the provider. This may not always be
          #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
          #   depending on what information the provider returns.
          sig { returns(T.nilable(FinchAPI::Models::Income)) }
          def income
          end

          sig { params(_: T.nilable(FinchAPI::Models::Income)).returns(T.nilable(FinchAPI::Models::Income)) }
          def income=(_)
          end

          # The array of income history.
          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)])) }
          def income_history
          end

          sig do
            params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]))
              .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]))
          end
          def income_history=(_)
          end

          # `true` if the individual an an active employee or contractor at the company.
          sig { returns(T.nilable(T::Boolean)) }
          def is_active
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def is_active=(_)
          end

          # The legal last name of the individual.
          sig { returns(T.nilable(String)) }
          def last_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def last_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def latest_rehire_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def latest_rehire_date=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Location)) }
          def location
          end

          sig { params(_: T.nilable(FinchAPI::Models::Location)).returns(T.nilable(FinchAPI::Models::Location)) }
          def location=(_)
          end

          # The manager object representing the manager of the individual within the org.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager)) }
          def manager
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager))
              .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager))
          end
          def manager=(_)
          end

          # The legal middle name of the individual.
          sig { returns(T.nilable(String)) }
          def middle_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def middle_name=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)])
            )
          end
          def phone_numbers
          end

          sig do
            params(
              _: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)])
            )
              .returns(
                T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)])
              )
          end
          def phone_numbers=(_)
          end

          # The preferred name of the individual.
          sig { returns(T.nilable(String)) }
          def preferred_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def preferred_name=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Location)) }
          def residence
          end

          sig { params(_: T.nilable(FinchAPI::Models::Location)).returns(T.nilable(FinchAPI::Models::Location)) }
          def residence=(_)
          end

          # The source system's unique employment identifier for this individual
          sig { returns(T.nilable(String)) }
          def source_id
          end

          sig { params(_: String).returns(String) }
          def source_id=(_)
          end

          # Social Security Number of the individual. This field is only available with the
          #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          #   body.
          #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
          sig { returns(T.nilable(String)) }
          def ssn
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def ssn=(_)
          end

          sig { returns(T.nilable(String)) }
          def start_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def start_date=(_)
          end

          # The current title of the individual.
          sig { returns(T.nilable(String)) }
          def title
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def title=(_)
          end

          sig do
            params(
              class_code: T.nilable(String),
              custom_fields: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField],
              department: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department),
              dob: T.nilable(String),
              emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email]),
              employment: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment),
              employment_status: T.nilable(Symbol),
              encrypted_ssn: T.nilable(String),
              end_date: T.nilable(String),
              ethnicity: T.nilable(Symbol),
              first_name: T.nilable(String),
              gender: T.nilable(Symbol),
              income: T.nilable(FinchAPI::Models::Income),
              income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              latest_rehire_date: T.nilable(String),
              location: T.nilable(FinchAPI::Models::Location),
              manager: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager),
              middle_name: T.nilable(String),
              phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)]),
              preferred_name: T.nilable(String),
              residence: T.nilable(FinchAPI::Models::Location),
              source_id: String,
              ssn: T.nilable(String),
              start_date: T.nilable(String),
              title: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            class_code: nil,
            custom_fields: nil,
            department: nil,
            dob: nil,
            emails: nil,
            employment: nil,
            employment_status: nil,
            encrypted_ssn: nil,
            end_date: nil,
            ethnicity: nil,
            first_name: nil,
            gender: nil,
            income: nil,
            income_history: nil,
            is_active: nil,
            last_name: nil,
            latest_rehire_date: nil,
            location: nil,
            manager: nil,
            middle_name: nil,
            phone_numbers: nil,
            preferred_name: nil,
            residence: nil,
            source_id: nil,
            ssn: nil,
            start_date: nil,
            title: nil
          )
          end

          sig do
            override
              .returns(
                {
                  class_code: T.nilable(String),
                  custom_fields: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField],
                  department: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department),
                  dob: T.nilable(String),
                  emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email]),
                  employment: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment),
                  employment_status: T.nilable(Symbol),
                  encrypted_ssn: T.nilable(String),
                  end_date: T.nilable(String),
                  ethnicity: T.nilable(Symbol),
                  first_name: T.nilable(String),
                  gender: T.nilable(Symbol),
                  income: T.nilable(FinchAPI::Models::Income),
                  income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
                  is_active: T.nilable(T::Boolean),
                  last_name: T.nilable(String),
                  latest_rehire_date: T.nilable(String),
                  location: T.nilable(FinchAPI::Models::Location),
                  manager: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager),
                  middle_name: T.nilable(String),
                  phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)]),
                  preferred_name: T.nilable(String),
                  residence: T.nilable(FinchAPI::Models::Location),
                  source_id: String,
                  ssn: T.nilable(String),
                  start_date: T.nilable(String),
                  title: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class CustomField < FinchAPI::BaseModel
            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { returns(T.nilable(T.anything)) }
            def value
            end

            sig { params(_: T.anything).returns(T.anything) }
            def value=(_)
            end

            sig { params(name: T.nilable(String), value: T.anything).returns(T.attached_class) }
            def self.new(name: nil, value: nil)
            end

            sig { override.returns({name: T.nilable(String), value: T.anything}) }
            def to_hash
            end
          end

          class Department < FinchAPI::BaseModel
            # The name of the department associated with the individual.
            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            # The department object.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(name: nil)
            end

            sig { override.returns({name: T.nilable(String)}) }
            def to_hash
            end
          end

          class Email < FinchAPI::BaseModel
            sig { returns(T.nilable(String)) }
            def data
            end

            sig { params(_: String).returns(String) }
            def data=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            sig { params(data: String, type: T.nilable(Symbol)).returns(T.attached_class) }
            def self.new(data: nil, type: nil)
            end

            sig { override.returns({data: String, type: T.nilable(Symbol)}) }
            def to_hash
            end

            class Type < FinchAPI::Enum
              abstract!

              WORK = T.let(:work, T.nilable(Symbol))
              PERSONAL = T.let(:personal, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class Employment < FinchAPI::BaseModel
            # The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            sig { returns(T.nilable(Symbol)) }
            def subtype
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def subtype=(_)
            end

            # The main employment type of the individual.
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            # The employment object.
            sig { params(subtype: T.nilable(Symbol), type: T.nilable(Symbol)).returns(T.attached_class) }
            def self.new(subtype: nil, type: nil)
            end

            sig { override.returns({subtype: T.nilable(Symbol), type: T.nilable(Symbol)}) }
            def to_hash
            end

            # The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            class Subtype < FinchAPI::Enum
              abstract!

              FULL_TIME = T.let(:full_time, T.nilable(Symbol))
              INTERN = T.let(:intern, T.nilable(Symbol))
              PART_TIME = T.let(:part_time, T.nilable(Symbol))
              TEMP = T.let(:temp, T.nilable(Symbol))
              SEASONAL = T.let(:seasonal, T.nilable(Symbol))
              INDIVIDUAL_CONTRACTOR = T.let(:individual_contractor, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            # The main employment type of the individual.
            class Type < FinchAPI::Enum
              abstract!

              EMPLOYEE = T.let(:employee, T.nilable(Symbol))
              CONTRACTOR = T.let(:contractor, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          # The detailed employment status of the individual.
          class EmploymentStatus < FinchAPI::Enum
            abstract!

            ACTIVE = T.let(:active, T.nilable(Symbol))
            DECEASED = T.let(:deceased, T.nilable(Symbol))
            LEAVE = T.let(:leave, T.nilable(Symbol))
            ONBOARDING = T.let(:onboarding, T.nilable(Symbol))
            PREHIRE = T.let(:prehire, T.nilable(Symbol))
            RETIRED = T.let(:retired, T.nilable(Symbol))
            TERMINATED = T.let(:terminated, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          # The EEOC-defined ethnicity of the individual.
          class Ethnicity < FinchAPI::Enum
            abstract!

            ASIAN = T.let(:asian, T.nilable(Symbol))
            WHITE = T.let(:white, T.nilable(Symbol))
            BLACK_OR_AFRICAN_AMERICAN = T.let(:black_or_african_american, T.nilable(Symbol))
            NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER = T.let(
              :native_hawaiian_or_pacific_islander,
              T.nilable(Symbol)
            )
            AMERICAN_INDIAN_OR_ALASKA_NATIVE = T.let(:american_indian_or_alaska_native, T.nilable(Symbol))
            HISPANIC_OR_LATINO = T.let(:hispanic_or_latino, T.nilable(Symbol))
            TWO_OR_MORE_RACES = T.let(:two_or_more_races, T.nilable(Symbol))
            DECLINE_TO_SPECIFY = T.let(:decline_to_specify, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          # The gender of the individual.
          class Gender < FinchAPI::Enum
            abstract!

            FEMALE = T.let(:female, T.nilable(Symbol))
            MALE = T.let(:male, T.nilable(Symbol))
            OTHER = T.let(:other, T.nilable(Symbol))
            DECLINE_TO_SPECIFY = T.let(:decline_to_specify, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Manager < FinchAPI::BaseModel
            # A stable Finch `id` (UUID v4) for an individual in the company.
            sig { returns(T.nilable(String)) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            # The manager object representing the manager of the individual within the org.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(id: nil)
            end

            sig { override.returns({id: String}) }
            def to_hash
            end
          end

          class PhoneNumber < FinchAPI::BaseModel
            sig { returns(T.nilable(String)) }
            def data
            end

            sig { params(_: String).returns(String) }
            def data=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def type=(_)
            end

            sig { params(data: String, type: T.nilable(Symbol)).returns(T.attached_class) }
            def self.new(data: nil, type: nil)
            end

            sig { override.returns({data: String, type: T.nilable(Symbol)}) }
            def to_hash
            end

            class Type < FinchAPI::Enum
              abstract!

              WORK = T.let(:work, T.nilable(Symbol))
              PERSONAL = T.let(:personal, T.nilable(Symbol))

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end
      end
    end
  end
end
