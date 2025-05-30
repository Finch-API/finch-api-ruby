# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualInDirectory < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::IndividualInDirectory,
              FinchAPI::Internal::AnyHash
            )
          end

        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(String) }
        attr_accessor :id

        # The department object.
        sig do
          returns(T.nilable(FinchAPI::HRIS::IndividualInDirectory::Department))
        end
        attr_reader :department

        sig do
          params(
            department:
              T.nilable(
                FinchAPI::HRIS::IndividualInDirectory::Department::OrHash
              )
          ).void
        end
        attr_writer :department

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # `true` if the individual is an active employee or contractor at the company.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_active

        # The legal last name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The manager object.
        sig do
          returns(T.nilable(FinchAPI::HRIS::IndividualInDirectory::Manager))
        end
        attr_reader :manager

        sig do
          params(
            manager:
              T.nilable(FinchAPI::HRIS::IndividualInDirectory::Manager::OrHash)
          ).void
        end
        attr_writer :manager

        # The legal middle name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig do
          params(
            id: String,
            department:
              T.nilable(
                FinchAPI::HRIS::IndividualInDirectory::Department::OrHash
              ),
            first_name: T.nilable(String),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            manager:
              T.nilable(FinchAPI::HRIS::IndividualInDirectory::Manager::OrHash),
            middle_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A stable Finch `id` (UUID v4) for an individual in the company.
          id:,
          # The department object.
          department:,
          # The legal first name of the individual.
          first_name:,
          # `true` if the individual is an active employee or contractor at the company.
          is_active:,
          # The legal last name of the individual.
          last_name:,
          # The manager object.
          manager:,
          # The legal middle name of the individual.
          middle_name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              department:
                T.nilable(FinchAPI::HRIS::IndividualInDirectory::Department),
              first_name: T.nilable(String),
              is_active: T.nilable(T::Boolean),
              last_name: T.nilable(String),
              manager:
                T.nilable(FinchAPI::HRIS::IndividualInDirectory::Manager),
              middle_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Department < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::IndividualInDirectory::Department,
                FinchAPI::Internal::AnyHash
              )
            end

          # The name of the department.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The department object.
          sig { params(name: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # The name of the department.
            name: nil
          )
          end

          sig { override.returns({ name: T.nilable(String) }) }
          def to_hash
          end
        end

        class Manager < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::IndividualInDirectory::Manager,
                FinchAPI::Internal::AnyHash
              )
            end

          # A stable Finch `id` (UUID v4) for an individual in the company.
          sig { returns(String) }
          attr_accessor :id

          # The manager object.
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
      end
    end
  end
end
