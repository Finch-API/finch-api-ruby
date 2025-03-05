# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualInDirectory < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department)) }
        def department
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department))
            .returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department))
        end
        def department=(_)
        end

        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
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

        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager)) }
        def manager
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager))
            .returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager))
        end
        def manager=(_)
        end

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
            .void
        end
        def initialize(
          id: nil,
          department: nil,
          first_name: nil,
          is_active: nil,
          last_name: nil,
          manager: nil,
          middle_name: nil
        )
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
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { params(name: T.nilable(String)).void }
          def initialize(name: nil)
          end

          sig { override.returns({name: T.nilable(String)}) }
          def to_hash
          end
        end

        class Manager < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id: nil)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
