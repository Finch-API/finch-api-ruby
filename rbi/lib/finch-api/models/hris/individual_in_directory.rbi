# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualInDirectory < FinchAPI::BaseModel
        # A stable Finch id (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The department object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department)) }
        def department
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department))
            .returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department))
        end
        def department=(_)
        end

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
        end

        # `true` if the individual is an active employee or contractor at the company.
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

        # The manager object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager)) }
        def manager
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager))
            .returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager))
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
          params(
            id: String,
            department: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department),
            first_name: T.nilable(String),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            manager: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager),
            middle_name: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(id: nil, department: nil, first_name: nil, is_active: nil, last_name: nil, manager: nil, middle_name: nil)
        end

        sig do
          override
            .returns(
              {
                id: String,
                department: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department),
                first_name: T.nilable(String),
                is_active: T.nilable(T::Boolean),
                last_name: T.nilable(String),
                manager: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager),
                middle_name: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Department < FinchAPI::BaseModel
          # The name of the department.
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

        class Manager < FinchAPI::BaseModel
          # A stable Finch `id` (UUID v4) for an individual in the company.
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The manager object.
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
