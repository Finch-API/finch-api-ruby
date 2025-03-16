# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class IndividualUpdateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(String)) }
        def dob
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def dob=(_)
        end

        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email])) }
        def emails
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]))
            .returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]))
        end
        def emails=(_)
        end

        # Social Security Number of the individual in **encrypted** format. This field is
        #   only available with the `ssn` scope enabled and the
        #   `options: { include: ['ssn'] }` param set in the body.
        sig { returns(T.nilable(String)) }
        def encrypted_ssn
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def encrypted_ssn=(_)
        end

        # The EEOC-defined ethnicity of the individual.
        sig { returns(T.nilable(Symbol)) }
        def ethnicity
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def ethnicity=(_)
        end

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        def first_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def first_name=(_)
        end

        # The gender of the individual.
        sig { returns(T.nilable(Symbol)) }
        def gender
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def gender=(_)
        end

        # The legal last name of the individual.
        sig { returns(T.nilable(String)) }
        def last_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def last_name=(_)
        end

        # The legal middle name of the individual.
        sig { returns(T.nilable(String)) }
        def middle_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def middle_name=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)])) }
        def phone_numbers
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)]))
        end
        def phone_numbers=(_)
        end

        # The preferred name of the individual.
        sig { returns(T.nilable(String)) }
        def preferred_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def preferred_name=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Location)) }
        def residence
        end

        sig { params(_: T.nilable(FinchAPI::Models::Location)).returns(T.nilable(FinchAPI::Models::Location)) }
        def residence=(_)
        end

        # Social Security Number of the individual. This field is only available with the
        #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        #   body.
        #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        sig { returns(T.nilable(String)) }
        def ssn
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ssn=(_)
        end

        sig do
          params(
            dob: T.nilable(String),
            emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]),
            encrypted_ssn: T.nilable(String),
            ethnicity: T.nilable(Symbol),
            first_name: T.nilable(String),
            gender: T.nilable(Symbol),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)]),
            preferred_name: T.nilable(String),
            residence: T.nilable(FinchAPI::Models::Location),
            ssn: T.nilable(String),
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          dob: nil,
          emails: nil,
          encrypted_ssn: nil,
          ethnicity: nil,
          first_name: nil,
          gender: nil,
          last_name: nil,
          middle_name: nil,
          phone_numbers: nil,
          preferred_name: nil,
          residence: nil,
          ssn: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                dob: T.nilable(String),
                emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]),
                encrypted_ssn: T.nilable(String),
                ethnicity: T.nilable(Symbol),
                first_name: T.nilable(String),
                gender: T.nilable(Symbol),
                last_name: T.nilable(String),
                middle_name: T.nilable(String),
                phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)]),
                preferred_name: T.nilable(String),
                residence: T.nilable(FinchAPI::Models::Location),
                ssn: T.nilable(String),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Email < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def data
          end

          sig { params(_: String).returns(String) }
          def data=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig { params(data: String, type: T.nilable(Symbol)).returns(T.attached_class) }
          def self.new(data: nil, type: nil)
          end

          sig { override.returns({data: String, type: T.nilable(Symbol)}) }
          def to_hash
          end

          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            WORK = :work
            PERSONAL = :personal
          end
        end

        # The EEOC-defined ethnicity of the individual.
        class Ethnicity < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ASIAN = :asian
          WHITE = :white
          BLACK_OR_AFRICAN_AMERICAN = :black_or_african_american
          NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER = :native_hawaiian_or_pacific_islander
          AMERICAN_INDIAN_OR_ALASKA_NATIVE = :american_indian_or_alaska_native
          HISPANIC_OR_LATINO = :hispanic_or_latino
          TWO_OR_MORE_RACES = :two_or_more_races
          DECLINE_TO_SPECIFY = :decline_to_specify
        end

        # The gender of the individual.
        class Gender < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          FEMALE = :female
          MALE = :male
          OTHER = :other
          DECLINE_TO_SPECIFY = :decline_to_specify
        end

        class PhoneNumber < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def data
          end

          sig { params(_: String).returns(String) }
          def data=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig { params(data: String, type: T.nilable(Symbol)).returns(T.attached_class) }
          def self.new(data: nil, type: nil)
          end

          sig { override.returns({data: String, type: T.nilable(Symbol)}) }
          def to_hash
          end

          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            WORK = :work
            PERSONAL = :personal
          end
        end
      end
    end
  end
end
