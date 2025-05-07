# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class IndividualUpdateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_accessor :dob

        sig do
          returns(
            T.nilable(
              T::Array[
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email
              ]
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
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
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
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
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
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber
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
            id: String,
            dob: T.nilable(String),
            emails:
              T.nilable(
                T::Array[
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::OrHash
                ]
              ),
            encrypted_ssn: T.nilable(String),
            ethnicity:
              T.nilable(
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::OrSymbol
              ),
            first_name: T.nilable(String),
            gender:
              T.nilable(
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::OrSymbol
              ),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::OrHash
                  )
                ]
              ),
            preferred_name: T.nilable(String),
            residence: T.nilable(FinchAPI::Location::OrHash),
            ssn: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A stable Finch `id` (UUID v4) for an individual in the company.
          id: nil,
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
          ssn: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              dob: T.nilable(String),
              emails:
                T.nilable(
                  T::Array[
                    FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email
                  ]
                ),
              encrypted_ssn: T.nilable(String),
              ethnicity:
                T.nilable(
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
                ),
              first_name: T.nilable(String),
              gender:
                T.nilable(
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
                ),
              last_name: T.nilable(String),
              middle_name: T.nilable(String),
              phone_numbers:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber
                    )
                  ]
                ),
              preferred_name: T.nilable(String),
              residence: T.nilable(FinchAPI::Location),
              ssn: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Email < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_reader :data

          sig { params(data: String).void }
          attr_writer :data

          sig do
            returns(
              T.nilable(
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type::TaggedSymbol
              )
            )
          end
          attr_accessor :type

          sig do
            params(
              data: String,
              type:
                T.nilable(
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type::OrSymbol
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
                    FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type::TaggedSymbol
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
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WORK =
              T.let(
                :work,
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type::TaggedSymbol
              )
            PERSONAL =
              T.let(
                :personal,
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type::TaggedSymbol
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
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASIAN =
            T.let(
              :asian,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          WHITE =
            T.let(
              :white,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          BLACK_OR_AFRICAN_AMERICAN =
            T.let(
              :black_or_african_american,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
            T.let(
              :native_hawaiian_or_pacific_islander,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          AMERICAN_INDIAN_OR_ALASKA_NATIVE =
            T.let(
              :american_indian_or_alaska_native,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          HISPANIC_OR_LATINO =
            T.let(
              :hispanic_or_latino,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          TWO_OR_MORE_RACES =
            T.let(
              :two_or_more_races,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )
          DECLINE_TO_SPECIFY =
            T.let(
              :decline_to_specify,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity::TaggedSymbol
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
              T.all(
                Symbol,
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FEMALE =
            T.let(
              :female,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
            )
          MALE =
            T.let(
              :male,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
            )
          DECLINE_TO_SPECIFY =
            T.let(
              :decline_to_specify,
              FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_accessor :data

          sig do
            returns(
              T.nilable(
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type::TaggedSymbol
              )
            )
          end
          attr_accessor :type

          sig do
            params(
              data: T.nilable(String),
              type:
                T.nilable(
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type::OrSymbol
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
                    FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type::TaggedSymbol
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
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WORK =
              T.let(
                :work,
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type::TaggedSymbol
              )
            PERSONAL =
              T.let(
                :personal,
                FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type::TaggedSymbol
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
