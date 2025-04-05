# typed: strong

module FinchAPI
  module Models
    module HRIS
      class Individual < FinchAPI::Internal::Type::BaseModel
        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_accessor :dob

        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Individual::Email])) }
        attr_accessor :emails

        # Social Security Number of the individual in **encrypted** format. This field is
        # only available with the `ssn` scope enabled and the
        # `options: { include: ['ssn'] }` param set in the body.
        sig { returns(T.nilable(String)) }
        attr_accessor :encrypted_ssn

        # The EEOC-defined ethnicity of the individual.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol)) }
        attr_accessor :ethnicity

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # The gender of the individual.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)) }
        attr_accessor :gender

        # The legal last name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The legal middle name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber)])) }
        attr_accessor :phone_numbers

        # The preferred name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_name

        sig { returns(T.nilable(FinchAPI::Models::Location)) }
        attr_reader :residence

        sig { params(residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash))).void }
        attr_writer :residence

        # Social Security Number of the individual. This field is only available with the
        # `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        # body.
        # [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        sig { returns(T.nilable(String)) }
        attr_accessor :ssn

        sig do
          params(
            id: String,
            dob: T.nilable(String),
            emails: T.nilable(T::Array[T.any(FinchAPI::Models::HRIS::Individual::Email, FinchAPI::Internal::AnyHash)]),
            encrypted_ssn: T.nilable(String),
            ethnicity: T.nilable(FinchAPI::Models::HRIS::Individual::Ethnicity::OrSymbol),
            first_name: T.nilable(String),
            gender: T.nilable(FinchAPI::Models::HRIS::Individual::Gender::OrSymbol),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers: T.nilable(
              T::Array[T.nilable(T.any(FinchAPI::Models::HRIS::Individual::PhoneNumber, FinchAPI::Internal::AnyHash))]
            ),
            preferred_name: T.nilable(String),
            residence: T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash)),
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
        ); end
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
        def to_hash; end

        class Email < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :data

          sig { params(data: String).void }
          attr_writer :data

          sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)) }
          attr_accessor :type

          sig do
            params(data: String, type: T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::OrSymbol))
              .returns(T.attached_class)
          end
          def self.new(data: nil, type: nil); end

          sig do
            override
              .returns({data: String, type: T.nilable(FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)})
          end
          def to_hash; end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::Email::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol) }

            WORK = T.let(:work, FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)
            PERSONAL = T.let(:personal, FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::Email::Type::TaggedSymbol]) }
            def self.values; end
          end
        end

        # The EEOC-defined ethnicity of the individual.
        module Ethnicity
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::Ethnicity) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol) }

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

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::Ethnicity::TaggedSymbol]) }
          def self.values; end
        end

        # The gender of the individual.
        module Gender
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::Gender) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol) }

          FEMALE = T.let(:female, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)
          MALE = T.let(:male, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)
          DECLINE_TO_SPECIFY = T.let(:decline_to_specify, FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::Gender::TaggedSymbol]) }
          def self.values; end
        end

        class PhoneNumber < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :data

          sig { returns(T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)) }
          attr_accessor :type

          sig do
            params(
              data: T.nilable(String),
              type: T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(data: nil, type: nil); end

          sig do
            override
              .returns(
                {
                  data: T.nilable(String),
                  type: T.nilable(FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)
                }
              )
          end
          def to_hash; end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol) }

            WORK = T.let(:work, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)
            PERSONAL = T.let(:personal, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::Individual::PhoneNumber::Type::TaggedSymbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
