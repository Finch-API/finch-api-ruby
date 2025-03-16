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
          params(_: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity))
            .returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity))
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
            entity: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Entity),
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

            Value = type_template(:out) { {fixed: Symbol} }

            CHECKING = :checking
            SAVINGS = :savings
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
            params(_: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent))
              .returns(T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent))
          end
          def parent=(_)
          end

          sig do
            params(
              name: T.nilable(String),
              parent: T.nilable(FinchAPI::Models::HRIS::HRISCompany::Department::Parent)
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

            Value = type_template(:out) { {fixed: Symbol} }

            S_CORPORATION = :s_corporation
            C_CORPORATION = :c_corporation
            B_CORPORATION = :b_corporation
          end

          # The tax payer type of the company.
          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            LLC = :llc
            LP = :lp
            CORPORATION = :corporation
            SOLE_PROPRIETOR = :sole_proprietor
            NON_PROFIT = :non_profit
            PARTNERSHIP = :partnership
            COOPERATIVE = :cooperative
          end
        end
      end
    end
  end
end
