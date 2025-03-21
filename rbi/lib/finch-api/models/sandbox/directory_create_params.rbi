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
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
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
            params(
              _: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, FinchAPI::Util::AnyHash)
              )
            )
              .returns(
                T.nilable(
                  T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, FinchAPI::Util::AnyHash)
                )
              )
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
            params(
              _: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, FinchAPI::Util::AnyHash)
              )
            )
              .returns(
                T.nilable(
                  T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, FinchAPI::Util::AnyHash)
                )
              )
          end
          def employment=(_)
          end

          # The detailed employment status of the individual.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol)) }
          def employment_status
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol))
              .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol))
          end
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
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol)) }
          def ethnicity
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol))
              .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol))
          end
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
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol)) }
          def gender
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol))
              .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol))
          end
          def gender=(_)
          end

          # The employee's income as reported by the provider. This may not always be
          #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
          #   depending on what information the provider returns.
          sig { returns(T.nilable(FinchAPI::Models::Income)) }
          def income
          end

          sig do
            params(_: T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Util::AnyHash)))
              .returns(T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Util::AnyHash)))
          end
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

          sig do
            params(_: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)))
              .returns(T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)))
          end
          def location=(_)
          end

          # The manager object representing the manager of the individual within the org.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager)) }
          def manager
          end

          sig do
            params(
              _: T.nilable(T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, FinchAPI::Util::AnyHash))
            )
              .returns(
                T.nilable(T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, FinchAPI::Util::AnyHash))
              )
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

          sig do
            params(_: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)))
              .returns(T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)))
          end
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
              department: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Department, FinchAPI::Util::AnyHash)
              ),
              dob: T.nilable(String),
              emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email]),
              employment: T.nilable(
                T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment, FinchAPI::Util::AnyHash)
              ),
              employment_status: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol),
              encrypted_ssn: T.nilable(String),
              end_date: T.nilable(String),
              ethnicity: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol),
              first_name: T.nilable(String),
              gender: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol),
              income: T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Util::AnyHash)),
              income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              latest_rehire_date: T.nilable(String),
              location: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)),
              manager: T.nilable(T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Manager, FinchAPI::Util::AnyHash)),
              middle_name: T.nilable(String),
              phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber)]),
              preferred_name: T.nilable(String),
              residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)),
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

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol)) }
            def type
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol))
                .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol))
            end
            def type=(_)
            end

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
              extend FinchAPI::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type) }
              OrSymbol =
                T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol) }

              WORK = T.let(:work, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol)
              PERSONAL =
                T.let(:personal, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol)

              class << self
                sig do
                  override
                    .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol])
                end
                def values
                end
              end
            end
          end

          class Employment < FinchAPI::BaseModel
            # The secondary employment type of the individual. Options: `full_time`,
            #   `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol)) }
            def subtype
            end

            sig do
              params(
                _: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol)
              )
                .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol))
            end
            def subtype=(_)
            end

            # The main employment type of the individual.
            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol)) }
            def type
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol))
                .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol))
            end
            def type=(_)
            end

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
              extend FinchAPI::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype) }
              OrSymbol =
                T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol) }

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

              class << self
                sig do
                  override
                    .returns(
                      T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol]
                    )
                end
                def values
                end
              end
            end

            # The main employment type of the individual.
            module Type
              extend FinchAPI::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type) }
              OrSymbol =
                T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol) }

              EMPLOYEE =
                T.let(:employee, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol)
              CONTRACTOR =
                T.let(:contractor, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol)

              class << self
                sig do
                  override
                    .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol])
                end
                def values
                end
              end
            end
          end

          # The detailed employment status of the individual.
          module EmploymentStatus
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol) }

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

            class << self
              sig do
                override
                  .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol])
              end
              def values
              end
            end
          end

          # The EEOC-defined ethnicity of the individual.
          module Ethnicity
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol) }

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

            class << self
              sig do
                override.returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol])
              end
              def values
              end
            end
          end

          # The gender of the individual.
          module Gender
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol) }

            FEMALE = T.let(:female, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)
            MALE = T.let(:male, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)
            OTHER = T.let(:other, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)
            DECLINE_TO_SPECIFY =
              T.let(:decline_to_specify, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol]) }
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

            sig { returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol)) }
            def type
            end

            sig do
              params(_: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol))
                .returns(T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol))
            end
            def type=(_)
            end

            sig do
              params(
                data: String,
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
                    data: String,
                    type: T.nilable(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol)
                  }
                )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type) }
              OrSymbol =
                T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol) }

              WORK =
                T.let(:work, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol)
              PERSONAL =
                T.let(:personal, FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol)

              class << self
                sig do
                  override
                    .returns(T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol])
                end
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
