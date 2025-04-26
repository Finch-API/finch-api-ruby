# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualInDirectory < FinchAPI::Internal::Type::BaseModel
        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The department object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Department)) }
        attr_reader :department

        sig do
          params(
            department: T.nilable(T.any(FinchAPI::Models::HRIS::IndividualInDirectory::Department, FinchAPI::Internal::AnyHash))
          )
            .void
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
        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualInDirectory::Manager)) }
        attr_reader :manager

        sig do
          params(
            manager: T.nilable(T.any(FinchAPI::Models::HRIS::IndividualInDirectory::Manager, FinchAPI::Internal::AnyHash))
          )
            .void
        end
        attr_writer :manager

        # The legal middle name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig do
          params(
            id: String,
            department: T.nilable(T.any(FinchAPI::Models::HRIS::IndividualInDirectory::Department, FinchAPI::Internal::AnyHash)),
            first_name: T.nilable(String),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            manager: T.nilable(T.any(FinchAPI::Models::HRIS::IndividualInDirectory::Manager, FinchAPI::Internal::AnyHash)),
            middle_name: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A stable Finch `id` (UUID v4) for an individual in the company.
          id: nil,
          # The department object.
          department: nil,
          # The legal first name of the individual.
          first_name: nil,
          # `true` if the individual is an active employee or contractor at the company.
          is_active: nil,
          # The legal last name of the individual.
          last_name: nil,
          # The manager object.
          manager: nil,
          # The legal middle name of the individual.
          middle_name: nil
        ); end
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
        def to_hash; end

        class Department < FinchAPI::Internal::Type::BaseModel
          # The name of the department.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The department object.
          sig { params(name: T.nilable(String)).returns(T.attached_class) }
          def self.new(
            # The name of the department.
            name: nil
          ); end
          sig { override.returns({name: T.nilable(String)}) }
          def to_hash; end
        end

        class Manager < FinchAPI::Internal::Type::BaseModel
          # A stable Finch `id` (UUID v4) for an individual in the company.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The manager object.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # A stable Finch `id` (UUID v4) for an individual in the company.
            id: nil
          ); end
          sig { override.returns({id: String}) }
          def to_hash; end
        end
      end
    end
  end
end
