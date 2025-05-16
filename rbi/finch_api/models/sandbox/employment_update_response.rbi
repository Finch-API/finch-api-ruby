# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class EmploymentUpdateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

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
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField
              ]
            )
          )
        end
        attr_accessor :custom_fields

        # The department object.
        sig do
          returns(
            T.nilable(
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department
            )
          )
        end
        attr_reader :department

        sig do
          params(
            department:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department::OrHash
              )
          ).void
        end
        attr_writer :department

        # The employment object.
        sig do
          returns(
            T.nilable(
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment
            )
          )
        end
        attr_reader :employment

        sig do
          params(
            employment:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::OrHash
              )
          ).void
        end
        attr_writer :employment

        # The detailed employment status of the individual. Available options: `active`,
        # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
        sig do
          returns(
            T.nilable(
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          )
        end
        attr_accessor :employment_status

        sig { returns(T.nilable(String)) }
        attr_accessor :end_date

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

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
            T.nilable(
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager
            )
          )
        end
        attr_reader :manager

        sig do
          params(
            manager:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager::OrHash
              )
          ).void
        end
        attr_writer :manager

        # The legal middle name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        # The source system's unique employment identifier for this individual
        sig { returns(T.nilable(String)) }
        attr_accessor :source_id

        sig { returns(T.nilable(String)) }
        attr_accessor :start_date

        # The current title of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        sig do
          params(
            id: String,
            class_code: T.nilable(String),
            custom_fields:
              T.nilable(
                T::Array[
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField::OrHash
                ]
              ),
            department:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department::OrHash
              ),
            employment:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::OrHash
              ),
            employment_status:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::OrSymbol
              ),
            end_date: T.nilable(String),
            first_name: T.nilable(String),
            income: T.nilable(FinchAPI::Income::OrHash),
            income_history:
              T.nilable(T::Array[T.nilable(FinchAPI::Income::OrHash)]),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            latest_rehire_date: T.nilable(String),
            location: T.nilable(FinchAPI::Location::OrHash),
            manager:
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager::OrHash
              ),
            middle_name: T.nilable(String),
            source_id: T.nilable(String),
            start_date: T.nilable(String),
            title: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A stable Finch `id` (UUID v4) for an individual in the company.
          id: nil,
          # Worker's compensation classification code for this employee
          class_code: nil,
          # Custom fields for the individual. These are fields which are defined by the
          # employer in the system. Custom fields are not currently supported for assisted
          # connections.
          custom_fields: nil,
          # The department object.
          department: nil,
          # The employment object.
          employment: nil,
          # The detailed employment status of the individual. Available options: `active`,
          # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          employment_status: nil,
          end_date: nil,
          # The legal first name of the individual.
          first_name: nil,
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
          # The source system's unique employment identifier for this individual
          source_id: nil,
          start_date: nil,
          # The current title of the individual.
          title: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              class_code: T.nilable(String),
              custom_fields:
                T.nilable(
                  T::Array[
                    FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField
                  ]
                ),
              department:
                T.nilable(
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department
                ),
              employment:
                T.nilable(
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment
                ),
              employment_status:
                T.nilable(
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
                ),
              end_date: T.nilable(String),
              first_name: T.nilable(String),
              income: T.nilable(FinchAPI::Income),
              income_history: T.nilable(T::Array[T.nilable(FinchAPI::Income)]),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              latest_rehire_date: T.nilable(String),
              location: T.nilable(FinchAPI::Location),
              manager:
                T.nilable(
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager
                ),
              middle_name: T.nilable(String),
              source_id: T.nilable(String),
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
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField,
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
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department,
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

        class Employment < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment,
                FinchAPI::Internal::AnyHash
              )
            end

          # The secondary employment type of the individual. Options: `full_time`,
          # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
          sig do
            returns(
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )
            )
          end
          attr_accessor :subtype

          # The main employment type of the individual.
          sig do
            returns(
              T.nilable(
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type::TaggedSymbol
              )
            )
          end
          attr_accessor :type

          # The employment object.
          sig do
            params(
              subtype:
                T.nilable(
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::OrSymbol
                ),
              type:
                T.nilable(
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type::OrSymbol
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
                    FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
                  ),
                type:
                  T.nilable(
                    FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type::TaggedSymbol
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
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FULL_TIME =
              T.let(
                :full_time,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )
            INTERN =
              T.let(
                :intern,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )
            PART_TIME =
              T.let(
                :part_time,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )
            TEMP =
              T.let(
                :temp,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )
            SEASONAL =
              T.let(
                :seasonal,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )
            INDIVIDUAL_CONTRACTOR =
              T.let(
                :individual_contractor,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Subtype::TaggedSymbol
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
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMPLOYEE =
              T.let(
                :employee,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type::TaggedSymbol
              )
            CONTRACTOR =
              T.let(
                :contractor,
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment::Type::TaggedSymbol
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
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          DECEASED =
            T.let(
              :deceased,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          LEAVE =
            T.let(
              :leave,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          ONBOARDING =
            T.let(
              :onboarding,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          PREHIRE =
            T.let(
              :prehire,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          RETIRED =
            T.let(
              :retired,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )
          TERMINATED =
            T.let(
              :terminated,
              FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus::TaggedSymbol
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
                FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager,
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
      end
    end
  end
end
