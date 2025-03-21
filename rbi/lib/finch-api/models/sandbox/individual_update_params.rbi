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
        sig { returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol)) }
        def ethnicity
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol))
            .returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol))
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
        sig { returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::OrSymbol)) }
        def gender
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::OrSymbol))
            .returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::OrSymbol))
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
            dob: T.nilable(String),
            emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]),
            encrypted_ssn: T.nilable(String),
            ethnicity: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol),
            first_name: T.nilable(String),
            gender: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::OrSymbol),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)]),
            preferred_name: T.nilable(String),
            residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash)),
            ssn: T.nilable(String),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
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
                ethnicity: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol),
                first_name: T.nilable(String),
                gender: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::OrSymbol),
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

          sig { returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol))
              .returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol))
          end
          def type=(_)
          end

          sig do
            params(
              data: String,
              type: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(data: nil, type: nil)
          end

          sig do
            override
              .returns(
                {data: String, type: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol)}
              )
          end
          def to_hash
          end

          module Type
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol) }

            WORK = T.let(:work, FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol)
            PERSONAL = T.let(:personal, FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol]) }
              def values
              end
            end
          end
        end

        # The EEOC-defined ethnicity of the individual.
        module Ethnicity
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol) }

          ASIAN = T.let(:asian, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol)
          WHITE = T.let(:white, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol)
          BLACK_OR_AFRICAN_AMERICAN =
            T.let(
              :black_or_african_american,
              FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
            T.let(
              :native_hawaiian_or_pacific_islander,
              FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          AMERICAN_INDIAN_OR_ALASKA_NATIVE =
            T.let(
              :american_indian_or_alaska_native,
              FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          HISPANIC_OR_LATINO =
            T.let(:hispanic_or_latino, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol)
          TWO_OR_MORE_RACES =
            T.let(:two_or_more_races, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol)
          DECLINE_TO_SPECIFY =
            T.let(:decline_to_specify, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol]) }
            def values
            end
          end
        end

        # The gender of the individual.
        module Gender
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol) }

          FEMALE = T.let(:female, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol)
          MALE = T.let(:male, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol)
          DECLINE_TO_SPECIFY =
            T.let(:decline_to_specify, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol]) }
            def values
            end
          end
        end

        class PhoneNumber < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def data
          end

          sig { params(_: String).returns(String) }
          def data=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol))
              .returns(T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol))
          end
          def type=(_)
          end

          sig do
            params(
              data: String,
              type: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(data: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  data: String,
                  type: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol)
                }
              )
          end
          def to_hash
          end

          module Type
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol) }

            WORK = T.let(:work, FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol)
            PERSONAL =
              T.let(:personal, FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol])
              end
              def values
              end
            end
          end
        end
      end
    end
  end
end
