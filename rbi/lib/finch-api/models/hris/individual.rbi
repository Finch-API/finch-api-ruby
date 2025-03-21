# typed: strong

module FinchAPI
  module Models
    module HRIS
      class Individual < FinchAPI::BaseModel
        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def dob
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def dob=(_)
        end

        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Individual::Email])) }
        def emails
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::HRIS::Individual::Email]))
            .returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Individual::Email]))
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
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)) }
        def ethnicity
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol))
        end
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
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)) }
        def gender
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol))
        end
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

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber)])) }
        def phone_numbers
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber)]))
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

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)))
        end
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
            id: String,
            dob: T.nilable(String),
            emails: T.nilable(T::Array[T.any(FinchAPI::Models::HRIS::Individual::Email, FinchAPI::Util::AnyHash)]),
            encrypted_ssn: T.nilable(String),
            ethnicity: T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::OrSymbol),
            first_name: T.nilable(String),
            gender: T.nilable(FinchAPI::Models::HRIS::Individual::Gender::OrSymbol),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers: T.nilable(
              T::Array[T.nilable(T.any(FinchAPI::Models::HRIS::Individual::PhoneNumber, FinchAPI::Util::AnyHash))]
            ),
            preferred_name: T.nilable(String),
            residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)),
            ssn: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id: nil,
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
          ssn: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                dob: T.nilable(String),
                emails: T.nilable(T::Array[FinchAPI::Models::HRIS::Individual::Email]),
                encrypted_ssn: T.nilable(String),
                ethnicity: T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol),
                first_name: T.nilable(String),
                gender: T.nilable(FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol),
                last_name: T.nilable(String),
                middle_name: T.nilable(String),
                phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber)]),
                preferred_name: T.nilable(String),
                residence: T.nilable(FinchAPI::Models::Location),
                ssn: T.nilable(String)
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

          sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol))
              .returns(T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol))
          end
          def type=(_)
          end

          sig do
            params(data: String, type: T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::OrSymbol))
              .returns(T.attached_class)
          end
          def self.new(data: nil, type: nil)
          end

          sig do
            override
              .returns({data: String, type: T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)})
          end
          def to_hash
          end

          module Type
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::Email::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol) }

            WORK = T.let(:work, FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)
            PERSONAL = T.let(:personal, FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol]) }
              def values
              end
            end
          end
        end

        # The EEOC-defined ethnicity of the individual.
        module Ethnicity
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::Ethnicity) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol) }

          ASIAN = T.let(:asian, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          WHITE = T.let(:white, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          BLACK_OR_AFRICAN_AMERICAN =
            T.let(:black_or_african_american, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
            T.let(:native_hawaiian_or_pacific_islander, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          AMERICAN_INDIAN_OR_ALASKA_NATIVE =
            T.let(:american_indian_or_alaska_native, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          HISPANIC_OR_LATINO =
            T.let(:hispanic_or_latino, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          TWO_OR_MORE_RACES =
            T.let(:two_or_more_races, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)
          DECLINE_TO_SPECIFY =
            T.let(:decline_to_specify, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol]) }
            def values
            end
          end
        end

        # The gender of the individual.
        module Gender
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::Gender) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol) }

          FEMALE = T.let(:female, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)
          MALE = T.let(:male, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)
          DECLINE_TO_SPECIFY = T.let(:decline_to_specify, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol]) }
            def values
            end
          end
        end

        class PhoneNumber < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def data
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def data=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol))
              .returns(T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol))
          end
          def type=(_)
          end

          sig do
            params(
              data: T.nilable(String),
              type: T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(data: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  data: T.nilable(String),
                  type: T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)
                }
              )
          end
          def to_hash
          end

          module Type
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol) }

            WORK = T.let(:work, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)
            PERSONAL = T.let(:personal, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
