# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Individual
        extend FinchAPI::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::Individual::UnionMember0,
              FinchAPI::HRIS::Individual::BatchError
            )
          end

        class UnionMember0 < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Individual::UnionMember0,
                FinchAPI::Internal::AnyHash
              )
            end

          # A stable Finch `id` (UUID v4) for an individual in the company.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_accessor :dob

          # The EEOC-defined ethnicity of the individual.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
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
                FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
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
                    FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber
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

          sig do
            returns(
              T.nilable(
                T::Array[FinchAPI::HRIS::Individual::UnionMember0::Email]
              )
            )
          end
          attr_accessor :emails

          # Social Security Number of the individual in **encrypted** format. This field is
          # only available with the `ssn` scope enabled and the
          # `options: { include: ['ssn'] }` param set in the body.
          sig { returns(T.nilable(String)) }
          attr_accessor :encrypted_ssn

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
              ethnicity:
                T.nilable(
                  FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::OrSymbol
                ),
              first_name: T.nilable(String),
              gender:
                T.nilable(
                  FinchAPI::HRIS::Individual::UnionMember0::Gender::OrSymbol
                ),
              last_name: T.nilable(String),
              middle_name: T.nilable(String),
              phone_numbers:
                T.nilable(
                  T::Array[
                    T.nilable(
                      FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::OrHash
                    )
                  ]
                ),
              preferred_name: T.nilable(String),
              residence: T.nilable(FinchAPI::Location::OrHash),
              emails:
                T.nilable(
                  T::Array[
                    FinchAPI::HRIS::Individual::UnionMember0::Email::OrHash
                  ]
                ),
              encrypted_ssn: T.nilable(String),
              ssn: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # A stable Finch `id` (UUID v4) for an individual in the company.
            id:,
            dob:,
            # The EEOC-defined ethnicity of the individual.
            ethnicity:,
            # The legal first name of the individual.
            first_name:,
            # The gender of the individual.
            gender:,
            # The legal last name of the individual.
            last_name:,
            # The legal middle name of the individual.
            middle_name:,
            phone_numbers:,
            # The preferred name of the individual.
            preferred_name:,
            residence:,
            emails: nil,
            # Social Security Number of the individual in **encrypted** format. This field is
            # only available with the `ssn` scope enabled and the
            # `options: { include: ['ssn'] }` param set in the body.
            encrypted_ssn: nil,
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
                ethnicity:
                  T.nilable(
                    FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
                  ),
                first_name: T.nilable(String),
                gender:
                  T.nilable(
                    FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
                  ),
                last_name: T.nilable(String),
                middle_name: T.nilable(String),
                phone_numbers:
                  T.nilable(
                    T::Array[
                      T.nilable(
                        FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber
                      )
                    ]
                  ),
                preferred_name: T.nilable(String),
                residence: T.nilable(FinchAPI::Location),
                emails:
                  T.nilable(
                    T::Array[FinchAPI::HRIS::Individual::UnionMember0::Email]
                  ),
                encrypted_ssn: T.nilable(String),
                ssn: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The EEOC-defined ethnicity of the individual.
          module Ethnicity
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::Individual::UnionMember0::Ethnicity
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASIAN =
              T.let(
                :asian,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            WHITE =
              T.let(
                :white,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            BLACK_OR_AFRICAN_AMERICAN =
              T.let(
                :black_or_african_american,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER =
              T.let(
                :native_hawaiian_or_pacific_islander,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            AMERICAN_INDIAN_OR_ALASKA_NATIVE =
              T.let(
                :american_indian_or_alaska_native,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            HISPANIC_OR_LATINO =
              T.let(
                :hispanic_or_latino,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            TWO_OR_MORE_RACES =
              T.let(
                :two_or_more_races,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )
            DECLINE_TO_SPECIFY =
              T.let(
                :decline_to_specify,
                FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::Individual::UnionMember0::Ethnicity::TaggedSymbol
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
                T.all(Symbol, FinchAPI::HRIS::Individual::UnionMember0::Gender)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEMALE =
              T.let(
                :female,
                FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
              )
            MALE =
              T.let(
                :male,
                FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
              )
            DECLINE_TO_SPECIFY =
              T.let(
                :decline_to_specify,
                FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::Individual::UnionMember0::Gender::TaggedSymbol
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
                  FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :data

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type::TaggedSymbol
                )
              )
            end
            attr_accessor :type

            sig do
              params(
                data: T.nilable(String),
                type:
                  T.nilable(
                    FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(data:, type:)
            end

            sig do
              override.returns(
                {
                  data: T.nilable(String),
                  type:
                    T.nilable(
                      FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type::TaggedSymbol
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
                    FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WORK =
                T.let(
                  :work,
                  FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type::TaggedSymbol
                )
              PERSONAL =
                T.let(
                  :personal,
                  FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::Individual::UnionMember0::PhoneNumber::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Email < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::Individual::UnionMember0::Email,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :data

            sig do
              returns(
                T.nilable(
                  FinchAPI::HRIS::Individual::UnionMember0::Email::Type::TaggedSymbol
                )
              )
            end
            attr_accessor :type

            sig do
              params(
                data: String,
                type:
                  T.nilable(
                    FinchAPI::HRIS::Individual::UnionMember0::Email::Type::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(data:, type:)
            end

            sig do
              override.returns(
                {
                  data: String,
                  type:
                    T.nilable(
                      FinchAPI::HRIS::Individual::UnionMember0::Email::Type::TaggedSymbol
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
                    FinchAPI::HRIS::Individual::UnionMember0::Email::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WORK =
                T.let(
                  :work,
                  FinchAPI::HRIS::Individual::UnionMember0::Email::Type::TaggedSymbol
                )
              PERSONAL =
                T.let(
                  :personal,
                  FinchAPI::HRIS::Individual::UnionMember0::Email::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    FinchAPI::HRIS::Individual::UnionMember0::Email::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class BatchError < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Individual::BatchError,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :code

          sig { returns(String) }
          attr_accessor :message

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :finch_code

          sig { params(finch_code: String).void }
          attr_writer :finch_code

          sig do
            params(
              code: Float,
              message: String,
              name: String,
              finch_code: String
            ).returns(T.attached_class)
          end
          def self.new(code:, message:, name:, finch_code: nil)
          end

          sig do
            override.returns(
              { code: Float, message: String, name: String, finch_code: String }
            )
          end
          def to_hash
          end
        end

        sig { override.returns(T::Array[FinchAPI::HRIS::Individual::Variants]) }
        def self.variants
        end
      end
    end
  end
end
