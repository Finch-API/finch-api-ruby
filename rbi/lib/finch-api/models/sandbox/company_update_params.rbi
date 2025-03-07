# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class CompanyUpdateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account])) }
        def accounts
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]))
            .returns(T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]))
        end
        def accounts=(_)
        end

        sig { returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)])) }
        def departments
        end

        sig do
          params(_: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]))
            .returns(T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]))
        end
        def departments=(_)
        end

        sig { returns(T.nilable(String)) }
        def ein
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def ein=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity)) }
        def entity
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity))
            .returns(T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity))
        end
        def entity=(_)
        end

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

        sig { returns(T.nilable(String)) }
        def primary_email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def primary_email=(_)
        end

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
            .void
        end
        def initialize(
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
          sig { returns(T.nilable(String)) }
          def account_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def account_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def account_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def account_type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def account_type=(_)
          end

          sig { returns(T.nilable(String)) }
          def institution_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def institution_name=(_)
          end

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
              .void
          end
          def initialize(
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
                  account_type: T.nilable(Symbol),
                  institution_name: T.nilable(String),
                  routing_number: T.nilable(String)
                }
              )
          end
          def to_hash
          end

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
          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

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
              .void
          end
          def initialize(name: nil, parent: nil)
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
            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig { params(name: T.nilable(String)).void }
            def initialize(name: nil)
            end

            sig { override.returns({name: T.nilable(String)}) }
            def to_hash
            end
          end
        end

        class Entity < FinchAPI::BaseModel
          sig { returns(T.nilable(Symbol)) }
          def subtype
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def subtype=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def type=(_)
          end

          sig { params(subtype: T.nilable(Symbol), type: T.nilable(Symbol)).void }
          def initialize(subtype: nil, type: nil)
          end

          sig { override.returns({subtype: T.nilable(Symbol), type: T.nilable(Symbol)}) }
          def to_hash
          end

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
