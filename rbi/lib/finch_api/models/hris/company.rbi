# typed: strong

module FinchAPI
  module Models
    module HRIS
      class HRISCompany < FinchAPI::Internal::Type::BaseModel
        # A stable Finch `id` (UUID v4) for the company.
        sig { returns(String) }
        attr_accessor :id

        # An array of bank account objects associated with the payroll/HRIS system.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account])) }
        attr_accessor :accounts

        # The array of company departments.
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department)])) }
        attr_accessor :departments

        # The employer identification number.
        sig { returns(T.nilable(String)) }
        attr_accessor :ein

        # The entity type object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity)) }
        attr_reader :entity

        sig do
          params(entity: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Entity, FinchAPI::Internal::AnyHash)))
            .void
        end
        attr_writer :entity

        # The legal name of the company.
        sig { returns(T.nilable(String)) }
        attr_accessor :legal_name

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)])) }
        attr_accessor :locations

        # The email of the main administrator on the account.
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_email

        # The phone number of the main administrator on the account. Format: `XXXXXXXXXX`
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_phone_number

        sig do
          params(
            id: String,
            accounts: T.nilable(T::Array[T.any(FinchAPI::Models::HRIS::HRISCompany::Account, FinchAPI::Internal::AnyHash)]),
            departments: T.nilable(
              T::Array[T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Department, FinchAPI::Internal::AnyHash))]
            ),
            ein: T.nilable(String),
            entity: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Entity, FinchAPI::Internal::AnyHash)),
            legal_name: T.nilable(String),
            locations: T.nilable(T::Array[T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash))]),
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
        ); end
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
        def to_hash; end

        class Account < FinchAPI::Internal::Type::BaseModel
          # The name of the bank associated in the payroll/HRIS system.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_name

          # 10-12 digit number to specify the bank account
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number

          # The type of bank account.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol)) }
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
              account_type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::OrSymbol),
              institution_name: T.nilable(String),
              routing_number: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            account_name: nil,
            account_number: nil,
            account_type: nil,
            institution_name: nil,
            routing_number: nil
          )
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
          def to_hash; end

          # The type of bank account.
          module AccountType
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol) }

            CHECKING = T.let(:checking, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol)
            SAVINGS = T.let(:savings, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::HRISCompany::Account::AccountType::TaggedSymbol]) }
            def self.values; end
          end
        end

        class Department < FinchAPI::Internal::Type::BaseModel
          # The department name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The parent department, if present.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent)) }
          attr_reader :parent

          sig do
            params(
              parent: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Department::Parent, FinchAPI::Internal::AnyHash))
            )
              .void
          end
          attr_writer :parent

          sig do
            params(
              name: T.nilable(String),
              parent: T.nilable(T.any(FinchAPI::Models::HRIS::HRISCompany::Department::Parent, FinchAPI::Internal::AnyHash))
            )
              .returns(T.attached_class)
          end
          def self.new(name: nil, parent: nil); end

          sig do
            override
              .returns(
                {name: T.nilable(String), parent: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent)}
              )
          end
          def to_hash; end

          class Parent < FinchAPI::Internal::Type::BaseModel
            # The parent department's name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The parent department, if present.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(name: nil); end

            sig { override.returns({name: T.nilable(String)}) }
            def to_hash; end
          end
        end

        class Entity < FinchAPI::Internal::Type::BaseModel
          # The tax payer subtype of the company.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)) }
          attr_accessor :subtype

          # The tax payer type of the company.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)) }
          attr_accessor :type

          # The entity type object.
          sig do
            params(
              subtype: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::OrSymbol),
              type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(subtype: nil, type: nil); end

          sig do
            override
              .returns(
                {
                  subtype: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol),
                  type: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
                }
              )
          end
          def to_hash; end

          # The tax payer subtype of the company.
          module Subtype
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol) }

            S_CORPORATION = T.let(:s_corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)
            C_CORPORATION = T.let(:c_corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)
            B_CORPORATION = T.let(:b_corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype::TaggedSymbol]) }
            def self.values; end
          end

          # The tax payer type of the company.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol) }

            LLC = T.let(:llc, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            LP = T.let(:lp, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            CORPORATION = T.let(:corporation, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            SOLE_PROPRIETOR =
              T.let(:sole_proprietor, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            NON_PROFIT = T.let(:non_profit, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            PARTNERSHIP = T.let(:partnership, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)
            COOPERATIVE = T.let(:cooperative, FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::HRISCompany::Entity::Type::TaggedSymbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
