# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class DirectoryCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Sandbox::DirectoryCreateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # Array of individuals to create. Takes all combined fields from `/individual` and
        # `/employment` endpoints. All fields are optional.
        sig do
          returns(
            T.nilable(T::Array[FinchAPI::Sandbox::DirectoryCreateParams::Body])
          )
        end
        attr_reader :body

        sig do
          params(
            body:
              T::Array[FinchAPI::Sandbox::DirectoryCreateParams::Body::OrHash]
          ).void
        end
        attr_writer :body

        sig do
          params(
            body:
              T::Array[FinchAPI::Sandbox::DirectoryCreateParams::Body::OrHash],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of individuals to create. Takes all combined fields from `/individual` and
          # `/employment` endpoints. All fields are optional.
          body: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body: T::Array[FinchAPI::Sandbox::DirectoryCreateParams::Body],
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Body < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Sandbox::DirectoryCreateParams::Body,
                FinchAPI::Internal::AnyHash
              )
            end

          # Worker's compensation classification code for this employee
          sig { returns(T.nilable(String)) }
          attr_accessor :class_code

          # Custom fields for the individual. These are fields which are defined by the
          # employer in the system. Custom fields are not currently supported for assisted
          # connections.
          sig do
            returns(
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::CustomField
                ]
              )
            )
          end
          attr_accessor :custom_fields

          # The department object.
          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Department
              )
            )
          end
          attr_reader :department

          sig do
            params(
              department:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Department::OrHash
                )
            ).void
          end
          attr_writer :department

          sig { returns(T.nilable(String)) }
          attr_accessor :dob

          sig do
            returns(
              T.nilable(
                T::Array[FinchAPI::Sandbox::DirectoryCreateParams::Body::Email]
              )
            )
          end
          attr_accessor :emails

          # The employment object.
          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment
              )
            )
          end
          attr_reader :employment

          sig do
            params(
              employment:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::OrHash
                )
            ).void
          end
          attr_writer :employment

          # The detailed employment status of the individual. Available options: `active`,
          # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol
              )
            )
          end
          attr_accessor :employment_status

          # Social Security Number of the individual in **encrypted** format. This field is
          # only available with the `ssn` scope enabled and the
          # `options: { include: ['ssn'] }` param set in the body.
          sig { returns(T.nilable(String)) }
          attr_accessor :encrypted_ssn

          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          # The EEOC-defined ethnicity of the individual.
          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol
              )
            )
          end
          attr_accessor :ethnicity

          # The legal first name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name

          # The gender of the individual.
          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol
              )
            )
          end
          attr_accessor :gender

          # The employee's income as reported by the provider. This may not always be
          # annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
          # depending on what information the provider returns.
          sig { returns(T.nilable(FinchAPI::Income)) }
          attr_reader :income

          sig { params(income: T.nilable(FinchAPI::Income::OrHash)).void }
          attr_writer :income

          # The array of income history.
          sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Income)])) }
          attr_accessor :income_history

          # `true` if the individual an an active employee or contractor at the company.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_active

          # The legal last name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name

          sig { returns(T.nilable(String)) }
          attr_accessor :latest_rehire_date

          sig { returns(T.nilable(FinchAPI::Location)) }
          attr_reader :location

          sig { params(location: T.nilable(FinchAPI::Location::OrHash)).void }
          attr_writer :location

          # The manager object representing the manager of the individual within the org.
          sig do
            returns(
              T.nilable(FinchAPI::Sandbox::DirectoryCreateParams::Body::Manager)
            )
          end
          attr_reader :manager

          sig do
            params(
              manager:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Manager::OrHash
                )
            ).void
          end
          attr_writer :manager

          # The legal middle name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :middle_name

          sig do
            returns(
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber
                  )
                ]
              )
            )
          end
          attr_accessor :phone_numbers

          # The preferred name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred_name

          sig { returns(T.nilable(FinchAPI::Location)) }
          attr_reader :residence

          sig { params(residence: T.nilable(FinchAPI::Location::OrHash)).void }
          attr_writer :residence

          # The source system's unique employment identifier for this individual
          sig { returns(T.nilable(String)) }
          attr_accessor :source_id

          # Social Security Number of the individual. This field is only available with the
          # `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          # body.
          # [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
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
              custom_fields:
                T.nilable(
                  T::Array[
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::CustomField::OrHash
                  ]
                ),
              department:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Department::OrHash
                ),
              dob: T.nilable(String),
              emails:
                T.nilable(
                  T::Array[
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::OrHash
                  ]
                ),
              employment:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::OrHash
                ),
              employment_status:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol
                ),
              encrypted_ssn: T.nilable(String),
              end_date: T.nilable(String),
              ethnicity:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol
                ),
              first_name: T.nilable(String),
              gender:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol
                ),
              income: T.nilable(FinchAPI::Income::OrHash),
              income_history:
                T.nilable(T::Array[T.nilable(FinchAPI::Income::OrHash)]),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              latest_rehire_date: T.nilable(String),
              location: T.nilable(FinchAPI::Location::OrHash),
              manager:
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Manager::OrHash
                ),
              middle_name: T.nilable(String),
              phone_numbers:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::OrHash
                    )
                  ]
                ),
              preferred_name: T.nilable(String),
              residence: T.nilable(FinchAPI::Location::OrHash),
              source_id: T.nilable(String),
              ssn: T.nilable(String),
              start_date: T.nilable(String),
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Worker's compensation classification code for this employee
            class_code: nil,
            # Custom fields for the individual. These are fields which are defined by the
            # employer in the system. Custom fields are not currently supported for assisted
            # connections.
            custom_fields: nil,
            # The department object.
            department: nil,
            dob: nil,
            emails: nil,
            # The employment object.
            employment: nil,
            # The detailed employment status of the individual. Available options: `active`,
            # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
            employment_status: nil,
            # Social Security Number of the individual in **encrypted** format. This field is
            # only available with the `ssn` scope enabled and the
            # `options: { include: ['ssn'] }` param set in the body.
            encrypted_ssn: nil,
            end_date: nil,
            # The EEOC-defined ethnicity of the individual.
            ethnicity: nil,
            # The legal first name of the individual.
            first_name: nil,
            # The gender of the individual.
            gender: nil,
            # The employee's income as reported by the provider. This may not always be
            # annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
            # depending on what information the provider returns.
            income: nil,
            # The array of income history.
            income_history: nil,
            # `true` if the individual an an active employee or contractor at the company.
            is_active: nil,
            # The legal last name of the individual.
            last_name: nil,
            latest_rehire_date: nil,
            location: nil,
            # The manager object representing the manager of the individual within the org.
            manager: nil,
            # The legal middle name of the individual.
            middle_name: nil,
            phone_numbers: nil,
            # The preferred name of the individual.
            preferred_name: nil,
            residence: nil,
            # The source system's unique employment identifier for this individual
            source_id: nil,
            # Social Security Number of the individual. This field is only available with the
            # `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
            # body.
            # [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
            ssn: nil,
            start_date: nil,
            # The current title of the individual.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                class_code: T.nilable(String),
                custom_fields:
                  T.nilable(
                    T::Array[
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::CustomField
                    ]
                  ),
                department:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Department
                  ),
                dob: T.nilable(String),
                emails:
                  T.nilable(
                    T::Array[
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::Email
                    ]
                  ),
                employment:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment
                  ),
                employment_status:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::OrSymbol
                  ),
                encrypted_ssn: T.nilable(String),
                end_date: T.nilable(String),
                ethnicity:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::OrSymbol
                  ),
                first_name: T.nilable(String),
                gender:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::OrSymbol
                  ),
                income: T.nilable(FinchAPI::Income),
                income_history:
                  T.nilable(T::Array[T.nilable(FinchAPI::Income)]),
                is_active: T.nilable(T::Boolean),
                last_name: T.nilable(String),
                latest_rehire_date: T.nilable(String),
                location: T.nilable(FinchAPI::Location),
                manager:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Manager
                  ),
                middle_name: T.nilable(String),
                phone_numbers:
                  T.nilable(
                    T::Array[
                      T.nilable(
                        FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber
                      )
                    ]
                  ),
                preferred_name: T.nilable(String),
                residence: T.nilable(FinchAPI::Location),
                source_id: T.nilable(String),
                ssn: T.nilable(String),
                start_date: T.nilable(String),
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class CustomField < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::CustomField,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig { returns(T.nilable(T.anything)) }
            attr_reader :value

            sig { params(value: T.anything).void }
            attr_writer :value

            sig do
              params(name: T.nilable(String), value: T.anything).returns(
                T.attached_class
              )
            end
            def self.new(name: nil, value: nil)
            end

            sig do
              override.returns({ name: T.nilable(String), value: T.anything })
            end
            def to_hash
            end
          end

          class Department < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Department,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The name of the department associated with the individual.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The department object.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(
              # The name of the department associated with the individual.
              name: nil
            )
            end

            sig { override.returns({ name: T.nilable(String) }) }
            def to_hash
            end
          end

          class Email < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Email,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :data

            sig { params(data: String).void }
            attr_writer :data

            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol
                )
              )
            end
            attr_accessor :type

            sig do
              params(
                data: String,
                type:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(data: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  data: String,
                  type:
                    T.nilable(
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type::OrSymbol
                    )
                }
              )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WORK =
                T.let(
                  :work,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol
                )
              PERSONAL =
                T.let(
                  :personal,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Email::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Employment < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The secondary employment type of the individual. Options: `full_time`,
            # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol
                )
              )
            end
            attr_accessor :subtype

            # The main employment type of the individual.
            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol
                )
              )
            end
            attr_accessor :type

            # The employment object.
            sig do
              params(
                subtype:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol
                  ),
                type:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # The secondary employment type of the individual. Options: `full_time`,
              # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
              subtype: nil,
              # The main employment type of the individual.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  subtype:
                    T.nilable(
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::OrSymbol
                    ),
                  type:
                    T.nilable(
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type::OrSymbol
                    )
                }
              )
            end
            def to_hash
            end

            # The secondary employment type of the individual. Options: `full_time`,
            # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            module Subtype
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FULL_TIME =
                T.let(
                  :full_time,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              INTERN =
                T.let(
                  :intern,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              PART_TIME =
                T.let(
                  :part_time,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              TEMP =
                T.let(
                  :temp,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              SEASONAL =
                T.let(
                  :seasonal,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )
              INDIVIDUAL_CONTRACTOR =
                T.let(
                  :individual_contractor,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Subtype::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The main employment type of the individual.
            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMPLOYEE =
                T.let(
                  :employee,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol
                )
              CONTRACTOR =
                T.let(
                  :contractor,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::Employment::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The detailed employment status of the individual. Available options: `active`,
          # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          module EmploymentStatus
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )
            DECEASED =
              T.let(
                :deceased,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )
            LEAVE =
              T.let(
                :leave,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )
            PREHIRE =
              T.let(
                :prehire,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )
            RETIRED =
              T.let(
                :retired,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )
            TERMINATED =
              T.let(
                :terminated,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::EmploymentStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The EEOC-defined ethnicity of the individual.
          module Ethnicity
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASIAN =
              T.let(
                :asian,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            WHITE =
              T.let(
                :white,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            BLACK_OR_AFRICAN_AMERICAN =
              T.let(
                :black_or_african_american,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
              T.let(
                :native_hawaiian_or_pacific_islander,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            AMERICAN_INDIAN_OR_ALASKA_NATIVE =
              T.let(
                :american_indian_or_alaska_native,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            HISPANIC_OR_LATINO =
              T.let(
                :hispanic_or_latino,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            TWO_OR_MORE_RACES =
              T.let(
                :two_or_more_races,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )
            DECLINE_TO_SPECIFY =
              T.let(
                :decline_to_specify,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Ethnicity::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The gender of the individual.
          module Gender
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEMALE =
              T.let(
                :female,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol
              )
            MALE =
              T.let(
                :male,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol
              )
            DECLINE_TO_SPECIFY =
              T.let(
                :decline_to_specify,
                FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Manager < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::Manager,
                  FinchAPI::Internal::AnyHash
                )
              end

            # A stable Finch `id` (UUID v4) for an individual in the company.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The manager object representing the manager of the individual within the org.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # A stable Finch `id` (UUID v4) for an individual in the company.
              id: nil
            )
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end

          class PhoneNumber < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :data

            sig do
              returns(
                T.nilable(
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol
                )
              )
            end
            attr_accessor :type

            sig do
              params(
                data: T.nilable(String),
                type:
                  T.nilable(
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(data: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  data: T.nilable(String),
                  type:
                    T.nilable(
                      FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::OrSymbol
                    )
                }
              )
            end
            def to_hash
            end

            module Type
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WORK =
                T.let(
                  :work,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol
                )
              PERSONAL =
                T.let(
                  :personal,
                  FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::Sandbox::DirectoryCreateParams::Body::PhoneNumber::Type::TaggedSymbol
                  ]
                )
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
