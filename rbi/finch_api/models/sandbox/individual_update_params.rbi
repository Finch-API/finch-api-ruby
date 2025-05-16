# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class IndividualUpdateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Sandbox::IndividualUpdateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :dob

        sig do
          returns(
            T.nilable(
              T::Array[FinchAPI::Sandbox::IndividualUpdateParams::Email]
            )
          )
        end
        attr_accessor :emails

        # Social Security Number of the individual in **encrypted** format. This field is
        # only available with the `ssn` scope enabled and the
        # `options: { include: ['ssn'] }` param set in the body.
        sig { returns(T.nilable(String)) }
        attr_accessor :encrypted_ssn

        # The EEOC-defined ethnicity of the individual.
        sig do
          returns(
            T.nilable(
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol
            )
          )
        end
        attr_accessor :ethnicity

        # The legal first name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # The gender of the individual.
        sig do
          returns(
            T.nilable(
              FinchAPI::Sandbox::IndividualUpdateParams::Gender::OrSymbol
            )
          )
        end
        attr_accessor :gender

        # The legal last name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The legal middle name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        sig do
          returns(
            T.nilable(
              T::Array[
                T.nilable(
                  FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber
                )
              ]
            )
          )
        end
        attr_accessor :phone_numbers

        # The preferred name of the individual.
        sig { returns(T.nilable(String)) }
        attr_accessor :preferred_name

        sig { returns(T.nilable(FinchAPI::Location)) }
        attr_reader :residence

        sig { params(residence: T.nilable(FinchAPI::Location::OrHash)).void }
        attr_writer :residence

        # Social Security Number of the individual. This field is only available with the
        # `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        # body.
        # [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        sig { returns(T.nilable(String)) }
        attr_accessor :ssn

        sig do
          params(
            dob: T.nilable(String),
            emails:
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::IndividualUpdateParams::Email::OrHash
                ]
              ),
            encrypted_ssn: T.nilable(String),
            ethnicity:
              T.nilable(
                FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol
              ),
            first_name: T.nilable(String),
            gender:
              T.nilable(
                FinchAPI::Sandbox::IndividualUpdateParams::Gender::OrSymbol
              ),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::OrHash
                  )
                ]
              ),
            preferred_name: T.nilable(String),
            residence: T.nilable(FinchAPI::Location::OrHash),
            ssn: T.nilable(String),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dob: nil,
          emails: nil,
          # Social Security Number of the individual in **encrypted** format. This field is
          # only available with the `ssn` scope enabled and the
          # `options: { include: ['ssn'] }` param set in the body.
          encrypted_ssn: nil,
          # The EEOC-defined ethnicity of the individual.
          ethnicity: nil,
          # The legal first name of the individual.
          first_name: nil,
          # The gender of the individual.
          gender: nil,
          # The legal last name of the individual.
          last_name: nil,
          # The legal middle name of the individual.
          middle_name: nil,
          phone_numbers: nil,
          # The preferred name of the individual.
          preferred_name: nil,
          residence: nil,
          # Social Security Number of the individual. This field is only available with the
          # `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          # body.
          # [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
          ssn: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dob: T.nilable(String),
              emails:
                T.nilable(
                  T::Array[FinchAPI::Sandbox::IndividualUpdateParams::Email]
                ),
              encrypted_ssn: T.nilable(String),
              ethnicity:
                T.nilable(
                  FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol
                ),
              first_name: T.nilable(String),
              gender:
                T.nilable(
                  FinchAPI::Sandbox::IndividualUpdateParams::Gender::OrSymbol
                ),
              last_name: T.nilable(String),
              middle_name: T.nilable(String),
              phone_numbers:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber
                    )
                  ]
                ),
              preferred_name: T.nilable(String),
              residence: T.nilable(FinchAPI::Location),
              ssn: T.nilable(String),
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Email < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Sandbox::IndividualUpdateParams::Email,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :data

          sig { params(data: String).void }
          attr_writer :data

          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol
              )
            )
          end
          attr_accessor :type

          sig do
            params(
              data: String,
              type:
                T.nilable(
                  FinchAPI::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(data: nil, type: nil)
          end

          sig do
            override.returns(
              {
                data: String,
                type:
                  T.nilable(
                    FinchAPI::Sandbox::IndividualUpdateParams::Email::Type::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::IndividualUpdateParams::Email::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WORK =
              T.let(
                :work,
                FinchAPI::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol
              )
            PERSONAL =
              T.let(
                :personal,
                FinchAPI::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::IndividualUpdateParams::Email::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The EEOC-defined ethnicity of the individual.
        module Ethnicity
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASIAN =
            T.let(
              :asian,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          WHITE =
            T.let(
              :white,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          BLACK_OR_AFRICAN_AMERICAN =
            T.let(
              :black_or_african_american,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
            T.let(
              :native_hawaiian_or_pacific_islander,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          AMERICAN_INDIAN_OR_ALASKA_NATIVE =
            T.let(
              :american_indian_or_alaska_native,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          HISPANIC_OR_LATINO =
            T.let(
              :hispanic_or_latino,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          TWO_OR_MORE_RACES =
            T.let(
              :two_or_more_races,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )
          DECLINE_TO_SPECIFY =
            T.let(
              :decline_to_specify,
              FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Sandbox::IndividualUpdateParams::Ethnicity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The gender of the individual.
        module Gender
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Sandbox::IndividualUpdateParams::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FEMALE =
            T.let(
              :female,
              FinchAPI::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol
            )
          MALE =
            T.let(
              :male,
              FinchAPI::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              FinchAPI::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol
            )
          DECLINE_TO_SPECIFY =
            T.let(
              :decline_to_specify,
              FinchAPI::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Sandbox::IndividualUpdateParams::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :data

          sig do
            returns(
              T.nilable(
                FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol
              )
            )
          end
          attr_accessor :type

          sig do
            params(
              data: T.nilable(String),
              type:
                T.nilable(
                  FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(data: nil, type: nil)
          end

          sig do
            override.returns(
              {
                data: T.nilable(String),
                type:
                  T.nilable(
                    FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WORK =
              T.let(
                :work,
                FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol
              )
            PERSONAL =
              T.let(
                :personal,
                FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::IndividualUpdateParams::PhoneNumber::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
