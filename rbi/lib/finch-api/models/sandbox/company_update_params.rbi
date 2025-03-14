# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class CompanyUpdateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # An array of bank account objects associated with the payroll/HRIS system.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account])) }
        def accounts
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]))
            .returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]))
        end
        def accounts=(_)
        end

        # The array of company departments.
        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)])) }
        def departments
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]))
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
        sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity)) }
        def entity
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity))
            .returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity))
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
            accounts: T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]),
            departments: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]),
            ein: T.nilable(String),
            entity: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity),
            legal_name: T.nilable(String),
            locations: T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String),
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          accounts:,
          departments:,
          ein:,
          entity:,
          legal_name:,
          locations:,
          primary_email:,
          primary_phone_number:,
          request_options: {}
        )
        end

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
          sig { returns(T.nilable(Symbol)) }
          def account_type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
              account_type: T.nilable(Symbol),
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
                  account_type: T.nilable(Symbol),
                  institution_name: T.nilable(String),
                  routing_number: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The type of bank account.
          class AccountType < FinchAPI::Enum
            abstract!

            CHECKING = T.let(:checking, T.nilable(Symbol))
            SAVINGS = T.let(:savings, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
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
          sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent)) }
          def parent
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent))
              .returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent))
          end
          def parent=(_)
          end

          sig do
            params(
              name: T.nilable(String),
              parent: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent)
            )
              .returns(T.attached_class)
          end
          def self.new(name: nil, parent: nil)
          end

          sig do
            override
              .returns(
                {
                  name: T.nilable(String),
                  parent: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department::Parent)
                }
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
          sig { returns(T.nilable(Symbol)) }
          def subtype
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def subtype=(_)
          end

          # The tax payer type of the company.
          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          # The entity type object.
          sig { params(subtype: T.nilable(Symbol), type: T.nilable(Symbol)).returns(T.attached_class) }
          def self.new(subtype: nil, type: nil)
          end

          sig { override.returns({subtype: T.nilable(Symbol), type: T.nilable(Symbol)}) }
          def to_hash
          end

          # The tax payer subtype of the company.
          class Subtype < FinchAPI::Enum
            abstract!

            S_CORPORATION = T.let(:s_corporation, T.nilable(Symbol))
            C_CORPORATION = T.let(:c_corporation, T.nilable(Symbol))
            B_CORPORATION = T.let(:b_corporation, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          # The tax payer type of the company.
          class Type < FinchAPI::Enum
            abstract!

            LLC = T.let(:llc, T.nilable(Symbol))
            LP = T.let(:lp, T.nilable(Symbol))
            CORPORATION = T.let(:corporation, T.nilable(Symbol))
            SOLE_PROPRIETOR = T.let(:sole_proprietor, T.nilable(Symbol))
            NON_PROFIT = T.let(:non_profit, T.nilable(Symbol))
            PARTNERSHIP = T.let(:partnership, T.nilable(Symbol))
            COOPERATIVE = T.let(:cooperative, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
