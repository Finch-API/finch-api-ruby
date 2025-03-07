# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class EmploymentUpdateResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def class_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def class_code=(_)
        end

        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField])) }
        def custom_fields
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField])
            .returns(T::Array[FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField])
        end
        def custom_fields=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department)) }
        def department
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department))
            .returns(T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department))
        end
        def department=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment)) }
        def employment
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment))
            .returns(T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment))
        end
        def employment=(_)
        end

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

        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Income)) }
        def income
        end

        sig { params(_: T.nilable(FinchAPI::Models::Income)).returns(T.nilable(FinchAPI::Models::Income)) }
        def income=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)])) }
        def income_history
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]))
        end
        def income_history=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def is_active
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def is_active=(_)
        end

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

        sig { returns(T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager)) }
        def manager
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager))
            .returns(T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager))
        end
        def manager=(_)
        end

        sig { returns(T.nilable(String)) }
        def middle_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def middle_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def source_id
        end

        sig { params(_: String).returns(String) }
        def source_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def start_date
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def start_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def title
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def title=(_)
        end

        sig do
          params(
            id: String,
            class_code: T.nilable(String),
            custom_fields: T::Array[FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField],
            department: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department),
            employment: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment),
            employment_status: T.nilable(Symbol),
            end_date: T.nilable(String),
            first_name: T.nilable(String),
            income: T.nilable(FinchAPI::Models::Income),
            income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            latest_rehire_date: T.nilable(String),
            location: T.nilable(FinchAPI::Models::Location),
            manager: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager),
            middle_name: T.nilable(String),
            source_id: String,
            start_date: T.nilable(String),
            title: T.nilable(String)
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
          title: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                class_code: T.nilable(String),
                custom_fields: T::Array[FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField],
                department: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department),
                employment: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment),
                employment_status: T.nilable(Symbol),
                end_date: T.nilable(String),
                first_name: T.nilable(String),
                income: T.nilable(FinchAPI::Models::Income),
                income_history: T.nilable(T::Array[T.nilable(FinchAPI::Models::Income)]),
                is_active: T.nilable(T::Boolean),
                last_name: T.nilable(String),
                latest_rehire_date: T.nilable(String),
                location: T.nilable(FinchAPI::Models::Location),
                manager: T.nilable(FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager),
                middle_name: T.nilable(String),
                source_id: String,
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
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { params(name: T.nilable(String)).returns(T.attached_class) }
          def self.new(name: nil)
          end

          sig { override.returns({name: T.nilable(String)}) }
          def to_hash
          end
        end

        class Employment < FinchAPI::BaseModel
          sig { returns(T.nilable(Symbol)) }
          def subtype
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def subtype=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig { params(subtype: T.nilable(Symbol), type: T.nilable(Symbol)).returns(T.attached_class) }
          def self.new(subtype: nil, type: nil)
          end

          sig { override.returns({subtype: T.nilable(Symbol), type: T.nilable(Symbol)}) }
          def to_hash
          end

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

        class Manager < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

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
