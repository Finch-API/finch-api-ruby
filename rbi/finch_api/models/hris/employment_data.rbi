# typed: strong

module FinchAPI
  module Models
    module HRIS
      module EmploymentData
        extend FinchAPI::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::EmploymentData::UnionMember0,
              FinchAPI::HRIS::EmploymentData::BatchError
            )
          end

        class UnionMember0 < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::EmploymentData::UnionMember0,
                FinchAPI::Internal::AnyHash
              )
            end

          # A stable Finch `id` (UUID v4) for an individual in the company.
          sig { returns(String) }
          attr_accessor :id

          # Worker's compensation classification code for this employee
          sig { returns(T.nilable(String)) }
          attr_accessor :class_code

          # The department object.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::EmploymentData::UnionMember0::Department
              )
            )
          end
          attr_reader :department

          sig do
            params(
              department:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Department::OrHash
                )
            ).void
          end
          attr_writer :department

          # The employment object.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::EmploymentData::UnionMember0::Employment
              )
            )
          end
          attr_reader :employment

          sig do
            params(
              employment:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::OrHash
                )
            ).void
          end
          attr_writer :employment

          # The detailed employment status of the individual. Available options: `active`,
          # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            )
          end
          attr_accessor :employment_status

          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          # The legal first name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name

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
              T.nilable(FinchAPI::HRIS::EmploymentData::UnionMember0::Manager)
            )
          end
          attr_reader :manager

          sig do
            params(
              manager:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Manager::OrHash
                )
            ).void
          end
          attr_writer :manager

          # The legal middle name of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :middle_name

          sig { returns(T.nilable(String)) }
          attr_accessor :start_date

          # The current title of the individual.
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          # Custom fields for the individual. These are fields which are defined by the
          # employer in the system. Custom fields are not currently supported for assisted
          # connections.
          sig do
            returns(
              T.nilable(
                T::Array[
                  FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField
                ]
              )
            )
          end
          attr_accessor :custom_fields

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

          # The source system's unique employment identifier for this individual
          sig { returns(T.nilable(String)) }
          attr_accessor :source_id

          # This field is deprecated in favour of `source_id`
          sig { returns(T.nilable(String)) }
          attr_accessor :work_id

          sig do
            params(
              id: String,
              class_code: T.nilable(String),
              department:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Department::OrHash
                ),
              employment:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::OrHash
                ),
              employment_status:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::OrSymbol
                ),
              end_date: T.nilable(String),
              first_name: T.nilable(String),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              latest_rehire_date: T.nilable(String),
              location: T.nilable(FinchAPI::Location::OrHash),
              manager:
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Manager::OrHash
                ),
              middle_name: T.nilable(String),
              start_date: T.nilable(String),
              title: T.nilable(String),
              custom_fields:
                T.nilable(
                  T::Array[
                    FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::OrHash
                  ]
                ),
              income: T.nilable(FinchAPI::Income::OrHash),
              income_history:
                T.nilable(T::Array[T.nilable(FinchAPI::Income::OrHash)]),
              source_id: T.nilable(String),
              work_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # A stable Finch `id` (UUID v4) for an individual in the company.
            id:,
            # Worker's compensation classification code for this employee
            class_code:,
            # The department object.
            department:,
            # The employment object.
            employment:,
            # The detailed employment status of the individual. Available options: `active`,
            # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
            employment_status:,
            end_date:,
            # The legal first name of the individual.
            first_name:,
            # `true` if the individual an an active employee or contractor at the company.
            is_active:,
            # The legal last name of the individual.
            last_name:,
            latest_rehire_date:,
            location:,
            # The manager object representing the manager of the individual within the org.
            manager:,
            # The legal middle name of the individual.
            middle_name:,
            start_date:,
            # The current title of the individual.
            title:,
            # Custom fields for the individual. These are fields which are defined by the
            # employer in the system. Custom fields are not currently supported for assisted
            # connections.
            custom_fields: nil,
            # The employee's income as reported by the provider. This may not always be
            # annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
            # depending on what information the provider returns.
            income: nil,
            # The array of income history.
            income_history: nil,
            # The source system's unique employment identifier for this individual
            source_id: nil,
            # This field is deprecated in favour of `source_id`
            work_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                class_code: T.nilable(String),
                department:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Department
                  ),
                employment:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment
                  ),
                employment_status:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
                  ),
                end_date: T.nilable(String),
                first_name: T.nilable(String),
                is_active: T.nilable(T::Boolean),
                last_name: T.nilable(String),
                latest_rehire_date: T.nilable(String),
                location: T.nilable(FinchAPI::Location),
                manager:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Manager
                  ),
                middle_name: T.nilable(String),
                start_date: T.nilable(String),
                title: T.nilable(String),
                custom_fields:
                  T.nilable(
                    T::Array[
                      FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField
                    ]
                  ),
                income: T.nilable(FinchAPI::Income),
                income_history:
                  T.nilable(T::Array[T.nilable(FinchAPI::Income)]),
                source_id: T.nilable(String),
                work_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Department < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Department,
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
              name:
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
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The secondary employment type of the individual. Options: `full_time`,
            # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )
              )
            end
            attr_accessor :subtype

            # The main employment type of the individual.
            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type::TaggedSymbol
                )
              )
            end
            attr_accessor :type

            # The employment object.
            sig do
              params(
                subtype:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::OrSymbol
                  ),
                type:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # The secondary employment type of the individual. Options: `full_time`,
              # `part_time`, `intern`, `temp`, `seasonal` and `individual_contractor`.
              subtype:,
              # The main employment type of the individual.
              type:
            )
            end

            sig do
              override.returns(
                {
                  subtype:
                    T.nilable(
                      FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                    ),
                  type:
                    T.nilable(
                      FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type::TaggedSymbol
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
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FULL_TIME =
                T.let(
                  :full_time,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )
              INTERN =
                T.let(
                  :intern,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )
              PART_TIME =
                T.let(
                  :part_time,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )
              TEMP =
                T.let(
                  :temp,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )
              SEASONAL =
                T.let(
                  :seasonal,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )
              INDIVIDUAL_CONTRACTOR =
                T.let(
                  :individual_contractor,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Subtype::TaggedSymbol
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
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMPLOYEE =
                T.let(
                  :employee,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type::TaggedSymbol
                )
              CONTRACTOR =
                T.let(
                  :contractor,
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::EmploymentData::UnionMember0::Employment::Type::TaggedSymbol
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
                  FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            DECEASED =
              T.let(
                :deceased,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            LEAVE =
              T.let(
                :leave,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            PREHIRE =
              T.let(
                :prehire,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            RETIRED =
              T.let(
                :retired,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )
            TERMINATED =
              T.let(
                :terminated,
                FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::EmploymentData::UnionMember0::EmploymentStatus::TaggedSymbol
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
                  FinchAPI::HRIS::EmploymentData::UnionMember0::Manager,
                  FinchAPI::Internal::AnyHash
                )
              end

            # A stable Finch `id` (UUID v4) for an individual in the company.
            sig { returns(String) }
            attr_accessor :id

            # The manager object representing the manager of the individual within the org.
            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # A stable Finch `id` (UUID v4) for an individual in the company.
              id:
            )
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end

          class CustomField < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::Value::Variants
                )
              )
            end
            attr_accessor :value

            sig do
              params(
                name: T.nilable(String),
                value:
                  T.nilable(
                    FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::Value::Variants
                  )
              ).returns(T.attached_class)
            end
            def self.new(name: nil, value: nil)
            end

            sig do
              override.returns(
                {
                  name: T.nilable(String),
                  value:
                    T.nilable(
                      FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::Value::Variants
                    )
                }
              )
            end
            def to_hash
            end

            module Value
              extend FinchAPI::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.nilable(
                    T.any(
                      String,
                      T::Array[T.anything],
                      T.anything,
                      Float,
                      T::Boolean
                    )
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::EmploymentData::UnionMember0::CustomField::Value::Variants
                  ]
                )
              end
              def self.variants
              end

              UnionMember1Array =
                T.let(
                  FinchAPI::Internal::Type::ArrayOf[
                    FinchAPI::Internal::Type::Unknown
                  ],
                  FinchAPI::Internal::Type::Converter
                )
            end
          end
        end

        class BatchError < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::EmploymentData::BatchError,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :code

          sig { returns(String) }
          attr_accessor :message

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :finch_code

          sig { params(finch_code: String).void }
          attr_writer :finch_code

          sig do
            params(
              code: Float,
              message: String,
              name: String,
              finch_code: String
            ).returns(T.attached_class)
          end
          def self.new(code:, message:, name:, finch_code: nil)
          end

          sig do
            override.returns(
              { code: Float, message: String, name: String, finch_code: String }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[FinchAPI::HRIS::EmploymentData::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
