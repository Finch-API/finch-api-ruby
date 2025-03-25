# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentData < FinchAPI::BaseModel
        # string A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Worker's compensation classification code for this employee
        sig { returns(T.nilable(String)) }
        attr_accessor :class_code

        # Custom fields for the individual. These are fields which are defined by the
        #   employer in the system.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::EmploymentData::CustomField])) }
        attr_accessor :custom_fields

        # The department object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Department)) }
        attr_reader :department

        sig do
          params(
            department: T.nilable(T.any(FinchAPI::Models::HRIS::EmploymentData::Department, FinchAPI::Util::AnyHash))
          )
            .void
        end
        attr_writer :department

        # The employment object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment)) }
        attr_reader :employment

        sig do
          params(
            employment: T.nilable(T.any(FinchAPI::Models::HRIS::EmploymentData::Employment, FinchAPI::Util::AnyHash))
          )
            .void
        end
        attr_writer :employment

        # The detailed employment status of the individual. Available options: `active`,
        #   `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)) }
        attr_accessor :employment_status

        sig { returns(T.nilable(String)) }
        attr_accessor :end_date

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # The employee's income as reported by the provider. This may not always be
        #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
        #   depending on what information the provider returns.
        sig { returns(T.nilable(FinchAPI::Models::Income)) }
        attr_reader :income

        sig { params(income: T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Util::AnyHash))).void }
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

        sig { params(location: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash))).void }
        attr_writer :location

        # The manager object representing the manager of the individual within the org.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Manager)) }
        attr_reader :manager

        sig do
          params(
            manager: T.nilable(T.any(FinchAPI::Models::HRIS::EmploymentData::Manager, FinchAPI::Util::AnyHash))
          )
            .void
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

        # This field is deprecated in favour of `source_id`
        sig { returns(T.nilable(String)) }
        attr_accessor :work_id

        sig do
          params(
            id: String,
            class_code: T.nilable(String),
            custom_fields: T.nilable(T::Array[T.any(FinchAPI::Models::HRIS::EmploymentData::CustomField, FinchAPI::Util::AnyHash)]),
            department: T.nilable(T.any(FinchAPI::Models::HRIS::EmploymentData::Department, FinchAPI::Util::AnyHash)),
            employment: T.nilable(T.any(FinchAPI::Models::HRIS::EmploymentData::Employment, FinchAPI::Util::AnyHash)),
            employment_status: T.nilable(FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::OrSymbol),
            end_date: T.nilable(String),
            first_name: T.nilable(String),
            income: T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Util::AnyHash)),
            income_history: T.nilable(T::Array[T.nilable(T.any(FinchAPI::Models::Income, FinchAPI::Util::AnyHash))]),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            latest_rehire_date: T.nilable(String),
            location: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)),
            manager: T.nilable(T.any(FinchAPI::Models::HRIS::EmploymentData::Manager, FinchAPI::Util::AnyHash)),
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
                employment_status: T.nilable(FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol),
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
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(T.anything)) }
          attr_reader :value

          sig { params(value: T.anything).void }
          attr_writer :value

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
          attr_accessor :name

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
          sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)) }
          attr_accessor :subtype

          # The main employment type of the individual.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment::Type::TaggedSymbol)) }
          attr_accessor :type

          # The employment object.
          sig do
            params(
              subtype: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::OrSymbol),
              type: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(subtype: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  subtype: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol),
                  type: T.nilable(FinchAPI::Models::HRIS::EmploymentData::Employment::Type::TaggedSymbol)
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
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol) }

            FULL_TIME = T.let(:full_time, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)
            INTERN = T.let(:intern, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)
            PART_TIME = T.let(:part_time, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)
            TEMP = T.let(:temp, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)
            SEASONAL = T.let(:seasonal, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)
            INDIVIDUAL_CONTRACTOR =
              T.let(:individual_contractor, FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::EmploymentData::Employment::Subtype::TaggedSymbol]) }
            def self.values
            end
          end

          # The main employment type of the individual.
          module Type
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::EmploymentData::Employment::Type::TaggedSymbol) }

            EMPLOYEE = T.let(:employee, FinchAPI::Models::HRIS::EmploymentData::Employment::Type::TaggedSymbol)
            CONTRACTOR = T.let(:contractor, FinchAPI::Models::HRIS::EmploymentData::Employment::Type::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::EmploymentData::Employment::Type::TaggedSymbol]) }
            def self.values
            end
          end
        end

        # The detailed employment status of the individual. Available options: `active`,
        #   `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
        module EmploymentStatus
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol) }

          ACTIVE = T.let(:active, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)
          DECEASED = T.let(:deceased, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)
          LEAVE = T.let(:leave, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)
          ONBOARDING = T.let(:onboarding, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)
          PREHIRE = T.let(:prehire, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)
          RETIRED = T.let(:retired, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)
          TERMINATED = T.let(:terminated, FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::EmploymentData::EmploymentStatus::TaggedSymbol]) }
          def self.values
          end
        end

        class Manager < FinchAPI::BaseModel
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
      end
    end
  end
end
