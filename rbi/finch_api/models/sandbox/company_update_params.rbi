# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class CompanyUpdateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # An array of bank account objects associated with the payroll/HRIS system.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account])) }
        attr_accessor :accounts

        # The array of company departments.
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)])) }
        attr_accessor :departments

        # The employer identification number.
        sig { returns(T.nilable(String)) }
        attr_accessor :ein

        # The entity type object.
        sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity)) }
        attr_reader :entity

        sig do
          params(
            entity: T.nilable(T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity, FinchAPI::Internal::AnyHash))
          )
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

        # The phone number of the main administrator on the account. Format: E.164, with
        # extension where applicable, e.g. `+NNNNNNNNNNN xExtension`
        sig { returns(T.nilable(String)) }
        attr_accessor :primary_phone_number

        sig do
          params(
            accounts: T.nilable(
              T::Array[T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Account, FinchAPI::Internal::AnyHash)]
            ),
            departments: T.nilable(
              T::Array[T.nilable(T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department, FinchAPI::Internal::AnyHash))]
            ),
            ein: T.nilable(String),
            entity: T.nilable(T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity, FinchAPI::Internal::AnyHash)),
            legal_name: T.nilable(String),
            locations: T.nilable(T::Array[T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Internal::AnyHash))]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          primary_phone_number:,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                accounts: T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]),
                departments: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]),
                ein: T.nilable(String),
                entity: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity),
                legal_name: T.nilable(String),
                locations: T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]),
                primary_email: T.nilable(String),
                primary_phone_number: T.nilable(String),
                request_options: FinchAPI::RequestOptions
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
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType::OrSymbol)) }
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
              account_type: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType::OrSymbol),
              institution_name: T.nilable(String),
              routing_number: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The name of the bank associated in the payroll/HRIS system.
            account_name: nil,
            # 10-12 digit number to specify the bank account
            account_number: nil,
            # The type of bank account.
            account_type: nil,
            # Name of the banking institution.
            institution_name: nil,
            # A nine-digit code that's based on the U.S. Bank location where your account was
            # opened.
            routing_number: nil
          ); end
          sig do
            override
              .returns(
                {
                  account_name: T.nilable(String),
                  account_number: T.nilable(String),
                  account_type: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType::OrSymbol),
                  institution_name: T.nilable(String),
                  routing_number: T.nilable(String)
                }
              )
          end
          def to_hash; end

          # The type of bank account.
          module AccountType
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHECKING =
              T.let(:checking, FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType::TaggedSymbol)
            SAVINGS =
              T.let(:savings, FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType::TaggedSymbol)

            sig do
              override
                .returns(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account::AccountType::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Department < FinchAPI::Internal::Type::BaseModel
          # The department name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The parent department, if present.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent)) }
          attr_reader :parent

          sig do
            params(
              parent: T.nilable(
                T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent, FinchAPI::Internal::AnyHash)
              )
            )
              .void
          end
          attr_writer :parent

          sig do
            params(
              name: T.nilable(String),
              parent: T.nilable(
                T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent, FinchAPI::Internal::AnyHash)
              )
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The department name.
            name: nil,
            # The parent department, if present.
            parent: nil
          ); end
          sig do
            override
              .returns(
                {
                  name: T.nilable(String),
                  parent: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent)
                }
              )
          end
          def to_hash; end

          class Parent < FinchAPI::Internal::Type::BaseModel
            # The parent department's name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The parent department, if present.
            sig { params(name: T.nilable(String)).returns(T.attached_class) }
            def self.new(
              # The parent department's name.
              name: nil
            ); end
            sig { override.returns({name: T.nilable(String)}) }
            def to_hash; end
          end
        end

        class Entity < FinchAPI::Internal::Type::BaseModel
          # The tax payer subtype of the company.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::OrSymbol)) }
          attr_accessor :subtype

          # The tax payer type of the company.
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::OrSymbol)) }
          attr_accessor :type

          # The entity type object.
          sig do
            params(
              subtype: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::OrSymbol),
              type: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The tax payer subtype of the company.
            subtype: nil,
            # The tax payer type of the company.
            type: nil
          ); end
          sig do
            override
              .returns(
                {
                  subtype: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::OrSymbol),
                  type: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::OrSymbol)
                }
              )
          end
          def to_hash; end

          # The tax payer subtype of the company.
          module Subtype
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            S_CORPORATION =
              T.let(:s_corporation, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::TaggedSymbol)
            C_CORPORATION =
              T.let(:c_corporation, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::TaggedSymbol)
            B_CORPORATION =
              T.let(:b_corporation, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Subtype::TaggedSymbol]) }
            def self.values; end
          end

          # The tax payer type of the company.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LLC = T.let(:llc, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)
            LP = T.let(:lp, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)
            CORPORATION =
              T.let(:corporation, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)
            SOLE_PROPRIETOR =
              T.let(:sole_proprietor, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)
            NON_PROFIT =
              T.let(:non_profit, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)
            PARTNERSHIP =
              T.let(:partnership, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)
            COOPERATIVE =
              T.let(:cooperative, FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity::Type::TaggedSymbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
