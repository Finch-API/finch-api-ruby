# typed: strong

module FinchAPI
  module Models
    module HRIS
      class HRISCompany < FinchAPI::BaseModel
        # A stable Finch `id` (UUID v4) for the company.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # An array of bank account objects associated with the payroll/HRIS system.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account])) }
        def accounts
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account]))
            .returns(T.nilable(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account]))
        end
        def accounts=(_)
        end

        # The array of company departments.
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department)])) }
        def departments
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department)]))
        end
        def departments=(_)
        end

        # The employer identification number.
        sig { returns(T.nilable(String)) }
        def ein
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ein=(_)
        end

        # The entity type object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity)) }
        def entity
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Entity, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Entity, FinchAPI::Util::AnyHash)))
        end
        def entity=(_)
        end

        # The legal name of the company.
        sig { returns(T.nilable(String)) }
        def legal_name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def legal_name=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)])) }
        def locations
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]))
        end
        def locations=(_)
        end

        # The email of the main administrator on the account.
        sig { returns(T.nilable(String)) }
        def primary_email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def primary_email=(_)
        end

        # The phone number of the main administrator on the account. Format: `XXXXXXXXXX`
        sig { returns(T.nilable(String)) }
        def primary_phone_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def primary_phone_number=(_)
        end

        sig do
          params(
            id: String,
            accounts: T.nilable(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account]),
            departments: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department)]),
            ein: T.nilable(String),
            entity: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Entity, FinchAPI::Util::AnyHash)),
            legal_name: T.nilable(String),
            locations: T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          accounts:,
          departments:,
          ein:,
          entity:,
          legal_name:,
          locations:,
          primary_email:,
          primary_phone_number:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                accounts: T.nilable(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account]),
                departments: T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department)]),
                ein: T.nilable(String),
                entity: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity),
                legal_name: T.nilable(String),
                locations: T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]),
                primary_email: T.nilable(String),
                primary_phone_number: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Account < FinchAPI::BaseModel
          # The name of the bank associated in the payroll/HRIS system.
          sig { returns(T.nilable(String)) }
          def account_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def account_name=(_)
          end

          # 10-12 digit number to specify the bank account
          sig { returns(T.nilable(String)) }
          def account_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_)
          end

          # The type of bank account.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol)) }
          def account_type
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol))
              .returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol))
          end
          def account_type=(_)
          end

          # Name of the banking institution.
          sig { returns(T.nilable(String)) }
          def institution_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def institution_name=(_)
          end

          # A nine-digit code that's based on the U.S. Bank location where your account was
          #   opened.
          sig { returns(T.nilable(String)) }
          def routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def routing_number=(_)
          end

          sig do
            params(
              account_name: T.nilable(String),
              account_number: T.nilable(String),
              account_type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol),
              institution_name: T.nilable(String),
              routing_number: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(account_name: nil, account_number: nil, account_type: nil, institution_name: nil, routing_number: nil)
          end

          sig do
            override
              .returns(
                {
                  account_name: T.nilable(String),
                  account_number: T.nilable(String),
                  account_type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol),
                  institution_name: T.nilable(String),
                  routing_number: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The type of bank account.
          module AccountType
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol) }

            CHECKING = T.let(:checking, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol)
            SAVINGS = T.let(:savings, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol]) }
              def values
              end
            end
          end
        end

        class Department < FinchAPI::BaseModel
          # The department name.
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          # The parent department, if present.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent)) }
          def parent
          end

          sig do
            params(
              _: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Department::Parent, FinchAPI::Util::AnyHash))
            )
              .returns(
                T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Department::Parent, FinchAPI::Util::AnyHash))
              )
          end
          def parent=(_)
          end

          sig do
            params(
              name: T.nilable(String),
              parent: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Department::Parent, FinchAPI::Util::AnyHash))
            )
              .returns(T.attached_class)
          end
          def self.new(name: nil, parent: nil)
          end

          sig do
            override
              .returns(
                {name: T.nilable(String), parent: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent)}
              )
          end
          def to_hash
          end

          class Parent < FinchAPI::BaseModel
            # The parent department's name.
            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            # The parent department, if present.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(name: nil)
            end

            sig { override.returns({name: T.nilable(String)}) }
            def to_hash
            end
          end
        end

        class Entity < FinchAPI::BaseModel
          # The tax payer subtype of the company.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)) }
          def subtype
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol))
              .returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol))
          end
          def subtype=(_)
          end

          # The tax payer type of the company.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)) }
          def type
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol))
              .returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol))
          end
          def type=(_)
          end

          # The entity type object.
          sig do
            params(
              subtype: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol),
              type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(subtype: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  subtype: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol),
                  type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
                }
              )
          end
          def to_hash
          end

          # The tax payer subtype of the company.
          module Subtype
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol) }

            S_CORPORATION = T.let(:s_corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)
            C_CORPORATION = T.let(:c_corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)
            B_CORPORATION = T.let(:b_corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol]) }
              def values
              end
            end
          end

          # The tax payer type of the company.
          module Type
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol) }

            LLC = T.let(:llc, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            LP = T.let(:lp, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            CORPORATION = T.let(:corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            SOLE_PROPRIETOR =
              T.let(:sole_proprietor, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            NON_PROFIT = T.let(:non_profit, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            PARTNERSHIP = T.let(:partnership, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            COOPERATIVE = T.let(:cooperative, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
