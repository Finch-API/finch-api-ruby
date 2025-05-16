# typed: strong

module FinchAPI
  module Models
    module HRIS
      class HRISCompany < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::HRISCompany, FinchAPI::Internal::AnyHash)
          end

        # A stable Finch `id` (UUID v4) for the company.
        sig { returns(String) }
        attr_accessor :id

        # An array of bank account objects associated with the payroll/HRIS system.
        sig do
          returns(T.nilable(T::Array[FinchAPI::HRIS::HRISCompany::Account]))
        end
        attr_accessor :accounts

        # The array of company departments.
        sig do
          returns(
            T.nilable(
              T::Array[T.nilable(FinchAPI::HRIS::HRISCompany::Department)]
            )
          )
        end
        attr_accessor :departments

        # The employer identification number.
        sig { returns(T.nilable(String)) }
        attr_accessor :ein

        # The entity type object.
        sig { returns(T.nilable(FinchAPI::HRIS::HRISCompany::Entity)) }
        attr_reader :entity

        sig do
          params(
            entity: T.nilable(FinchAPI::HRIS::HRISCompany::Entity::OrHash)
          ).void
        end
        attr_writer :entity

        # The legal name of the company.
        sig { returns(T.nilable(String)) }
        attr_accessor :legal_name

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Location)])) }
        attr_accessor :locations

        # The email of the main administrator on the account.
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_email

        # The phone number of the main administrator on the account. Format: E.164, with
        # extension where applicable, e.g. `+NNNNNNNNNNN xExtension`
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_phone_number

        sig do
          params(
            id: String,
            accounts:
              T.nilable(T::Array[FinchAPI::HRIS::HRISCompany::Account::OrHash]),
            departments:
              T.nilable(
                T::Array[
                  T.nilable(FinchAPI::HRIS::HRISCompany::Department::OrHash)
                ]
              ),
            ein: T.nilable(String),
            entity: T.nilable(FinchAPI::HRIS::HRISCompany::Entity::OrHash),
            legal_name: T.nilable(String),
            locations:
              T.nilable(T::Array[T.nilable(FinchAPI::Location::OrHash)]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A stable Finch `id` (UUID v4) for the company.
          id:,
          # An array of bank account objects associated with the payroll/HRIS system.
          accounts:,
          # The array of company departments.
          departments:,
          # The employer identification number.
          ein:,
          # The entity type object.
          entity:,
          # The legal name of the company.
          legal_name:,
          locations:,
          # The email of the main administrator on the account.
          primary_email:,
          # The phone number of the main administrator on the account. Format: E.164, with
          # extension where applicable, e.g. `+NNNNNNNNNNN xExtension`
          primary_phone_number:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              accounts:
                T.nilable(T::Array[FinchAPI::HRIS::HRISCompany::Account]),
              departments:
                T.nilable(
                  T::Array[T.nilable(FinchAPI::HRIS::HRISCompany::Department)]
                ),
              ein: T.nilable(String),
              entity: T.nilable(FinchAPI::HRIS::HRISCompany::Entity),
              legal_name: T.nilable(String),
              locations: T.nilable(T::Array[T.nilable(FinchAPI::Location)]),
              primary_email: T.nilable(String),
              primary_phone_number: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Account < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::HRISCompany::Account,
                FinchAPI::Internal::AnyHash
              )
            end

          # The name of the bank associated in the payroll/HRIS system.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_name

          # 10-12 digit number to specify the bank account
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number

          # The type of bank account.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::HRISCompany::Account::AccountType::TaggedSymbol
              )
            )
          end
          attr_accessor :account_type

          # Name of the banking institution.
          sig { returns(T.nilable(String)) }
          attr_accessor :institution_name

          # A nine-digit code that's based on the U.S. Bank location where your account was
          # opened.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number

          sig do
            params(
              account_name: T.nilable(String),
              account_number: T.nilable(String),
              account_type:
                T.nilable(
                  FinchAPI::HRIS::HRISCompany::Account::AccountType::OrSymbol
                ),
              institution_name: T.nilable(String),
              routing_number: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the bank associated in the payroll/HRIS system.
            account_name:,
            # 10-12 digit number to specify the bank account
            account_number:,
            # The type of bank account.
            account_type:,
            # Name of the banking institution.
            institution_name:,
            # A nine-digit code that's based on the U.S. Bank location where your account was
            # opened.
            routing_number:
          )
          end

          sig do
            override.returns(
              {
                account_name: T.nilable(String),
                account_number: T.nilable(String),
                account_type:
                  T.nilable(
                    FinchAPI::HRIS::HRISCompany::Account::AccountType::TaggedSymbol
                  ),
                institution_name: T.nilable(String),
                routing_number: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The type of bank account.
          module AccountType
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::HRIS::HRISCompany::Account::AccountType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHECKING =
              T.let(
                :checking,
                FinchAPI::HRIS::HRISCompany::Account::AccountType::TaggedSymbol
              )
            SAVINGS =
              T.let(
                :savings,
                FinchAPI::HRIS::HRISCompany::Account::AccountType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::HRISCompany::Account::AccountType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Department < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::HRISCompany::Department,
                FinchAPI::Internal::AnyHash
              )
            end

          # The department name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The parent department, if present.
          sig do
            returns(T.nilable(FinchAPI::HRIS::HRISCompany::Department::Parent))
          end
          attr_reader :parent

          sig do
            params(
              parent:
                T.nilable(
                  FinchAPI::HRIS::HRISCompany::Department::Parent::OrHash
                )
            ).void
          end
          attr_writer :parent

          sig do
            params(
              name: T.nilable(String),
              parent:
                T.nilable(
                  FinchAPI::HRIS::HRISCompany::Department::Parent::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The department name.
            name:,
            # The parent department, if present.
            parent:
          )
          end

          sig do
            override.returns(
              {
                name: T.nilable(String),
                parent:
                  T.nilable(FinchAPI::HRIS::HRISCompany::Department::Parent)
              }
            )
          end
          def to_hash
          end

          class Parent < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::HRISCompany::Department::Parent,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The parent department's name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The parent department, if present.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(
              # The parent department's name.
              name:
            )
            end

            sig { override.returns({ name: T.nilable(String) }) }
            def to_hash
            end
          end
        end

        class Entity < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::HRISCompany::Entity,
                FinchAPI::Internal::AnyHash
              )
            end

          # The tax payer subtype of the company.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol
              )
            )
          end
          attr_accessor :subtype

          # The tax payer type of the company.
          sig do
            returns(
              T.nilable(FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            )
          end
          attr_accessor :type

          # The entity type object.
          sig do
            params(
              subtype:
                T.nilable(
                  FinchAPI::HRIS::HRISCompany::Entity::Subtype::OrSymbol
                ),
              type:
                T.nilable(FinchAPI::HRIS::HRISCompany::Entity::Type::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # The tax payer subtype of the company.
            subtype:,
            # The tax payer type of the company.
            type:
          )
          end

          sig do
            override.returns(
              {
                subtype:
                  T.nilable(
                    FinchAPI::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol
                  ),
                type:
                  T.nilable(
                    FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # The tax payer subtype of the company.
          module Subtype
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::HRIS::HRISCompany::Entity::Subtype)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            S_CORPORATION =
              T.let(
                :s_corporation,
                FinchAPI::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol
              )
            C_CORPORATION =
              T.let(
                :c_corporation,
                FinchAPI::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol
              )
            B_CORPORATION =
              T.let(
                :b_corporation,
                FinchAPI::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The tax payer type of the company.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::HRIS::HRISCompany::Entity::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LLC =
              T.let(
                :llc,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )
            LP =
              T.let(
                :lp,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )
            CORPORATION =
              T.let(
                :corporation,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )
            SOLE_PROPRIETOR =
              T.let(
                :sole_proprietor,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )
            NON_PROFIT =
              T.let(
                :non_profit,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )
            PARTNERSHIP =
              T.let(
                :partnership,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )
            COOPERATIVE =
              T.let(
                :cooperative,
                FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::HRISCompany::Entity::Type::TaggedSymbol
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
