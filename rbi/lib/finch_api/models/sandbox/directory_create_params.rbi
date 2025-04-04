# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class DirectoryCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # Array of individuals to create. Takes all combined fields from `/individual` and
        #   `/employment` endpoints. All fields are optional.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body])) }
        attr_reader :body

        sig do
          params(
            body: T::Array[T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body, FinchAPI::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :body

        sig do
          params(
            body: T::Array[T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body, FinchAPI::Internal::AnyHash)],
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
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

        class Body < FinchAPI::Internal::Type::BaseModel
          # Worker's compensation classification code for this employee
          sig { returns(T.nilable(String)) }
          attr_accessor :class_code

          # Custom fields for the individual. These are fields which are defined by the
          #   employer in the system. Custom fields are not currently supported for assisted
          #   connections.
          sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField])) }
          attr_reader :custom_fields

          sig do
            params(
              custom_fields: T::Array[T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField, FinchAPI::Internal::AnyHash)]
            )
              .void
          end
          attr_writer :custom_fields

          # The department object.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department)) }
          attr_reader :department

          sig do
            params(
              department: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, FinchAPI::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :department

          sig { returns(T.nilable(String)) }
          attr_accessor :dob

          sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email])) }
          attr_accessor :emails

          # The employment object.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment)) }
          attr_reader :employment

          sig do
            params(
              employment: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, FinchAPI::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :employment

          # The detailed employment status of the individual.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol)) }
          attr_accessor :employment_status

          # Social Security Number of the individual in **encrypted** format. This field is
          #   only available with the `ssn` scope enabled and the
          #   `options: { include: ['ssn'] }` param set in the body.
          sig { returns(T.nilable(String)) }
          attr_accessor :encrypted_ssn

          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          # The EEOC-defined ethnicity of the individual.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol)) }
          attr_accessor :ethnicity

          # The legal first name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name

          # The gender of the individual.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol)) }
          attr_accessor :gender

          # The employee's income as reported by the provider. This may not always be
          #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
          #   depending on what information the provider returns.
          sig { returns(T.nilable(FinchAPI::Models::Income)) }
          attr_reader :income

          sig { params(income: T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Internal::AnyHash))).void }
          attr_writer :income

          # The array of income history.
          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)])) }
          attr_accessor :income_history

          # `true` if the individual an an active employee or contractor at the company.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_active

          # The legal last name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name

          sig { returns(T.nilable(String)) }
          attr_accessor :latest_rehire_date

          sig { returns(T.nilable(FinchAPI::Models::Location)) }
          attr_reader :location

          sig { params(location: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash))).void }
          attr_writer :location

          # The manager object representing the manager of the individual within the org.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager)) }
          attr_reader :manager

          sig do
            params(
              manager: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, FinchAPI::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :manager

          # The legal middle name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :middle_name

          sig do
            returns(
              T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)])
            )
          end
          attr_accessor :phone_numbers

          # The preferred name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_name

          sig { returns(T.nilable(FinchAPI::Models::Location)) }
          attr_reader :residence

          sig { params(residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash))).void }
          attr_writer :residence

          # The source system's unique employment identifier for this individual
          sig { returns(T.nilable(String)) }
          attr_reader :source_id

          sig { params(source_id: String).void }
          attr_writer :source_id

          # Social Security Number of the individual. This field is only available with the
          #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          #   body.
          #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
          sig { returns(T.nilable(String)) }
          attr_accessor :ssn

          sig { returns(T.nilable(String)) }
          attr_accessor :start_date

          # The current title of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig do
            params(
              class_code: T.nilable(String),
              custom_fields: T::Array[T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::CustomField, FinchAPI::Internal::AnyHash)],
              department: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, FinchAPI::Internal::AnyHash)
              ),
              dob: T.nilable(String),
              emails: T.nilable(
                T::Array[T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email, FinchAPI::Internal::AnyHash)]
              ),
              employment: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, FinchAPI::Internal::AnyHash)
              ),
              employment_status: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol),
              encrypted_ssn: T.nilable(String),
              end_date: T.nilable(String),
              ethnicity: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol),
              first_name: T.nilable(String),
              gender: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol),
              income: T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Internal::AnyHash)),
              income_history: T.nilable(T::Array[T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Internal::AnyHash))]),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              latest_rehire_date: T.nilable(String),
              location: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash)),
              manager: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, FinchAPI::Internal::AnyHash)
              ),
              middle_name: T.nilable(String),
              phone_numbers: T.nilable(
                T::Array[
                T.nilable(
                  T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber, FinchAPI::Internal::AnyHash)
                )
                ]
              ),
              preferred_name: T.nilable(String),
              residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash)),
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
                  employment_status: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol),
                  encrypted_ssn: T.nilable(String),
                  end_date: T.nilable(String),
                  ethnicity: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol),
                  first_name: T.nilable(String),
                  gender: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol),
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

          class CustomField < FinchAPI::Internal::Type::BaseModel
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig { returns(T.nilable(T.anything)) }
            attr_reader :value

            sig { params(value: T.anything).void }
            attr_writer :value

            sig { params(name: T.nilable(String), value: T.anything).returns(T.attached_class) }
            def self.new(name: nil, value: nil)
            end

            sig { override.returns({name: T.nilable(String), value: T.anything}) }
            def to_hash
            end
          end

          class Department < FinchAPI::Internal::Type::BaseModel
            # The name of the department associated with the individual.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The department object.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(name: nil)
            end

            sig { override.returns({name: T.nilable(String)}) }
            def to_hash
            end
          end

          class Email < FinchAPI::Internal::Type::BaseModel
            sig { returns(T.nilable(String)) }
            attr_reader :data

            sig { params(data: String).void }
            attr_writer :data

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol)) }
            attr_accessor :type

            sig do
              params(
                data: String,
                type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(data: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {data: String, type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol)}
                )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type) }
              OrSymbol =
                T.type_alias { T.any(Symbol, String, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol) }

              WORK = T.let(:work, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol)
              PERSONAL =
                T.let(:personal, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol])
              end
              def self.values
              end
            end
          end

          class Employment < FinchAPI::Internal::Type::BaseModel
            # The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol)) }
            attr_accessor :subtype

            # The main employment type of the individual.
            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol)) }
            attr_accessor :type

            # The employment object.
            sig do
              params(
                subtype: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol),
                type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(subtype: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    subtype: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol),
                    type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol)
                  }
                )
            end
            def to_hash
            end

            # The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            module Subtype
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                  )
                end

              FULL_TIME =
                T.let(
                  :full_time,
                  FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              INTERN =
                T.let(:intern, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol)
              PART_TIME =
                T.let(
                  :part_time,
                  FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              TEMP =
                T.let(:temp, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol)
              SEASONAL =
                T.let(
                  :seasonal,
                  FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              INDIVIDUAL_CONTRACTOR =
                T.let(
                  :individual_contractor,
                  FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            # The main employment type of the individual.
            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol
                  )
                end

              EMPLOYEE =
                T.let(:employee, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol)
              CONTRACTOR =
                T.let(:contractor, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol])
              end
              def self.values
              end
            end
          end

          # The detailed employment status of the individual.
          module EmploymentStatus
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
                )
              end

            ACTIVE =
              T.let(:active, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)
            DECEASED =
              T.let(:deceased, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)
            LEAVE =
              T.let(:leave, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)
            ONBOARDING =
              T.let(:onboarding, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)
            PREHIRE =
              T.let(:prehire, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)
            RETIRED =
              T.let(:retired, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)
            TERMINATED =
              T.let(:terminated, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol)

            sig do
              override
                .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol])
            end
            def self.values
            end
          end

          # The EEOC-defined ethnicity of the individual.
          module Ethnicity
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol) }

            ASIAN = T.let(:asian, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol)
            WHITE = T.let(:white, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol)
            BLACK_OR_AFRICAN_AMERICAN =
              T.let(
                :black_or_african_american,
                FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
              T.let(
                :native_hawaiian_or_pacific_islander,
                FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            AMERICAN_INDIAN_OR_ALASKA_NATIVE =
              T.let(
                :american_indian_or_alaska_native,
                FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            HISPANIC_OR_LATINO =
              T.let(
                :hispanic_or_latino,
                FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            TWO_OR_MORE_RACES =
              T.let(:two_or_more_races, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol)
            DECLINE_TO_SPECIFY =
              T.let(
                :decline_to_specify,
                FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )

            sig do
              override.returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol])
            end
            def self.values
            end
          end

          # The gender of the individual.
          module Gender
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol) }

            FEMALE = T.let(:female, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)
            MALE = T.let(:male, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)
            OTHER = T.let(:other, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)
            DECLINE_TO_SPECIFY =
              T.let(:decline_to_specify, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol]) }
            def self.values
            end
          end

          class Manager < FinchAPI::Internal::Type::BaseModel
            # A stable Finch `id` (UUID v4) for an individual in the company.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The manager object representing the manager of the individual within the org.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(id: nil)
            end

            sig { override.returns({id: String}) }
            def to_hash
            end
          end

          class PhoneNumber < FinchAPI::Internal::Type::BaseModel
            sig { returns(T.nilable(String)) }
            attr_accessor :data

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol)) }
            attr_accessor :type

            sig do
              params(
                data: T.nilable(String),
                type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol)
              )
                .returns(T.attached_class)
            end
            def self.new(data: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    data: T.nilable(String),
                    type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol)
                  }
                )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol
                  )
                end

              WORK =
                T.let(:work, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol)
              PERSONAL =
                T.let(:personal, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol])
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
