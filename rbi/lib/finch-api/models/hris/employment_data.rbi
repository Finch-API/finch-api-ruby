# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentData < FinchAPI::BaseModel
        # string A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Worker's compensation classification code for this employee
        sig { returns(T.nilable(String)) }
        def class_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def class_code=(_)
        end

        # Custom fields for the individual. These are fields which are defined by the
        #   employer in the system.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::EmploymentData::CustomField])) }
        def custom_fields
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::HRIS::EmploymentData::CustomField]))
            .returns(T.nilable(T::Array[FinchAPI::Models::HRIS::EmploymentData::CustomField]))
        end
        def custom_fields=(_)
        end

        # The department object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Department)) }
        def department
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Department))
            .returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Department))
        end
        def department=(_)
        end

        # The employment object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment)) }
        def employment
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment))
            .returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment))
        end
        def employment=(_)
        end

        # The detailed employment status of the individual. Available options: `active`,
        #   `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
        sig { returns(T.nilable(Symbol)) }
        def employment_status
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def employment_status=(_)
        end

        sig { returns(T.nilable(String)) }
        def end_date
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def end_date=(_)
        end

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
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
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Manager)) }
        def manager
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Manager))
            .returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Manager))
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

        # The source system's unique employment identifier for this individual
        sig { returns(T.nilable(String)) }
        def source_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def source_id=(_)
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

        # This field is deprecated in favour of `source_id`
        sig { returns(T.nilable(String)) }
        def work_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def work_id=(_)
        end

        sig do
          params(
            id: String,
            class_code: T.nilable(String),
            custom_fields: T.nilable(T::Array[FinchAPI::Models::HRIS::EmploymentData::CustomField]),
            department: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Department),
            employment: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment),
            employment_status: T.nilable(Symbol),
            end_date: T.nilable(String),
            first_name: T.nilable(String),
            income: T.nilable(FinchAPI::Models::Income),
            income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            latest_rehire_date: T.nilable(String),
            location: T.nilable(FinchAPI::Models::Location),
            manager: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Manager),
            middle_name: T.nilable(String),
            source_id: T.nilable(String),
            start_date: T.nilable(String),
            title: T.nilable(String),
            work_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id: nil,
          class_code: nil,
          custom_fields: nil,
          department: nil,
          employment: nil,
          employment_status: nil,
          end_date: nil,
          first_name: nil,
          income: nil,
          income_history: nil,
          is_active: nil,
          last_name: nil,
          latest_rehire_date: nil,
          location: nil,
          manager: nil,
          middle_name: nil,
          source_id: nil,
          start_date: nil,
          title: nil,
          work_id: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                class_code: T.nilable(String),
                custom_fields: T.nilable(T::Array[FinchAPI::Models::HRIS::EmploymentData::CustomField]),
                department: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Department),
                employment: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment),
                employment_status: T.nilable(Symbol),
                end_date: T.nilable(String),
                first_name: T.nilable(String),
                income: T.nilable(FinchAPI::Models::Income),
                income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
                is_active: T.nilable(T::Boolean),
                last_name: T.nilable(String),
                latest_rehire_date: T.nilable(String),
                location: T.nilable(FinchAPI::Models::Location),
                manager: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Manager),
                middle_name: T.nilable(String),
                source_id: T.nilable(String),
                start_date: T.nilable(String),
                title: T.nilable(String),
                work_id: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class CustomField < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def value
          end

          sig { params(_: T.anything).returns(T.anything) }
          def value=(_)
          end

          sig { params(name: String, value: T.anything).returns(T.attached_class) }
          def self.new(name: nil, value: nil)
          end

          sig { override.returns({name: String, value: T.anything}) }
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

            Value = type_template(:out) { {fixed: Symbol} }

            FULL_TIME = :full_time
            INTERN = :intern
            PART_TIME = :part_time
            TEMP = :temp
            SEASONAL = :seasonal
            INDIVIDUAL_CONTRACTOR = :individual_contractor
          end

          # The main employment type of the individual.
          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            EMPLOYEE = :employee
            CONTRACTOR = :contractor
          end
        end

        # The detailed employment status of the individual. Available options: `active`,
        #   `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
        class EmploymentStatus < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ACTIVE = :active
          DECEASED = :deceased
          LEAVE = :leave
          ONBOARDING = :onboarding
          PREHIRE = :prehire
          RETIRED = :retired
          TERMINATED = :terminated
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
      end
    end
  end
end
