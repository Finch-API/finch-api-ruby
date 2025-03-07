# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrollManyParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual])) }
          def individuals
          end

          sig do
            params(_: T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual])
              .returns(T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual])
          end
          def individuals=(_)
          end

          sig do
            params(
              individuals: T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual],
              request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(individuals: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  individuals: T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual],
                  request_options: FinchAPI::RequestOptions
                }
              )
          end
          def to_hash
          end

          class Individual < FinchAPI::BaseModel
            sig do
              returns(
                T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration)
              )
            end
            def configuration
            end

            sig do
              params(_: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration)
                .returns(FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration)
            end
            def configuration=(_)
            end

            sig { returns(T.nilable(String)) }
            def individual_id
            end

            sig { params(_: String).returns(String) }
            def individual_id=(_)
            end

            sig do
              params(
                configuration: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                individual_id: String
              )
                .void
            end
            def initialize(configuration: nil, individual_id: nil)
            end

            sig do
              override
                .returns(
                  {
                    configuration: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                    individual_id: String
                  }
                )
            end
            def to_hash
            end

            class Configuration < FinchAPI::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def annual_contribution_limit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def annual_contribution_limit=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def annual_maximum
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def annual_maximum=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def catch_up
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def catch_up=(_)
              end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution
                  )
                )
              end
              def company_contribution
              end

              sig do
                params(
                  _: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution
                )
                  .returns(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution
                  )
              end
              def company_contribution=(_)
              end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                  )
                )
              end
              def employee_deduction
              end

              sig do
                params(
                  _: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                )
                  .returns(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                  )
              end
              def employee_deduction=(_)
              end

              sig do
                params(
                  annual_contribution_limit: Symbol,
                  annual_maximum: T.nilable(Integer),
                  catch_up: T::Boolean,
                  company_contribution: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                  employee_deduction: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                )
                  .void
              end
              def initialize(
                annual_contribution_limit: nil,
                annual_maximum: nil,
                catch_up: nil,
                company_contribution: nil,
                employee_deduction: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      annual_contribution_limit: Symbol,
                      annual_maximum: T.nilable(Integer),
                      catch_up: T::Boolean,
                      company_contribution: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                      employee_deduction: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                    }
                  )
              end
              def to_hash
              end

              class AnnualContributionLimit < FinchAPI::Enum
                abstract!

                INDIVIDUAL = :individual
                FAMILY = :family

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class CompanyContribution < FinchAPI::BaseModel
                sig { returns(T.nilable(Integer)) }
                def amount
                end

                sig { params(_: Integer).returns(Integer) }
                def amount=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Integer, type: Symbol).void }
                def initialize(amount: nil, type: nil)
                end

                sig { override.returns({amount: Integer, type: Symbol}) }
                def to_hash
                end

                class Type < FinchAPI::Enum
                  abstract!

                  FIXED = :fixed
                  PERCENT = :percent

                  class << self
                    sig { override.returns(T::Array[Symbol]) }
                    def values
                    end
                  end
                end
              end

              class EmployeeDeduction < FinchAPI::BaseModel
                sig { returns(T.nilable(Integer)) }
                def amount
                end

                sig { params(_: Integer).returns(Integer) }
                def amount=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Integer, type: Symbol).void }
                def initialize(amount: nil, type: nil)
                end

                sig { override.returns({amount: Integer, type: Symbol}) }
                def to_hash
                end

                class Type < FinchAPI::Enum
                  abstract!

                  FIXED = :fixed
                  PERCENT = :percent

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
    end
  end
end
