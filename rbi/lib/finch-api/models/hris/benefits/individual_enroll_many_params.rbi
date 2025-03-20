# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrollManyParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # Array of the individual_id to enroll and a configuration object.
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
              .returns(T.attached_class)
          end
          def self.new(individuals: nil, request_options: {})
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
              params(
                _: T.any(
                  FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def configuration=(_)
            end

            # Finch id (uuidv4) for the individual to enroll
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
                .returns(T.attached_class)
            end
            def self.new(configuration: nil, individual_id: nil)
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
              # For HSA benefits only - whether the contribution limit is for an individual or
              #   family
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol
                  )
                )
              end
              def annual_contribution_limit
              end

              sig do
                params(
                  _: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol
                )
                  .returns(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol
                  )
              end
              def annual_contribution_limit=(_)
              end

              # Maximum annual amount in cents
              sig { returns(T.nilable(Integer)) }
              def annual_maximum
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def annual_maximum=(_)
              end

              # For retirement benefits only - whether catch up contributions are enabled
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
                  _: T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                      FinchAPI::Util::AnyHash
                    )
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
                  _: T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def employee_deduction=(_)
              end

              sig do
                params(
                  annual_contribution_limit: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol,
                  annual_maximum: T.nilable(Integer),
                  catch_up: T::Boolean,
                  company_contribution: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                  employee_deduction: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                      annual_contribution_limit: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol,
                      annual_maximum: T.nilable(Integer),
                      catch_up: T::Boolean,
                      company_contribution: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                      employee_deduction: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                    }
                  )
              end
              def to_hash
              end

              # For HSA benefits only - whether the contribution limit is for an individual or
              #   family
              module AnnualContributionLimit
                extend FinchAPI::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::TaggedSymbol
                    )
                  end

                INDIVIDUAL =
                  T.let(
                    :individual,
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::TaggedSymbol
                  )
                FAMILY =
                  T.let(
                    :family,
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end

              class CompanyContribution < FinchAPI::BaseModel
                # Amount in cents for fixed type or basis points (1/100th of a percent) for
                #   percent type
                sig { returns(T.nilable(Integer)) }
                def amount
                end

                sig { params(_: Integer).returns(Integer) }
                def amount=(_)
                end

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                    )
                  )
                end
                def type
                end

                sig do
                  params(
                    _: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                  )
                    .returns(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                    )
                end
                def type=(_)
                end

                sig do
                  params(
                    amount: Integer,
                    type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                  )
                    .returns(T.attached_class)
                end
                def self.new(amount: nil, type: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        amount: Integer,
                        type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                      }
                    )
                end
                def to_hash
                end

                module Type
                  extend FinchAPI::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::TaggedSymbol
                      )
                    end

                  FIXED =
                    T.let(
                      :fixed,
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::TaggedSymbol
                    )
                  PERCENT =
                    T.let(
                      :percent,
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::TaggedSymbol
                    )

                  class << self
                    sig do
                      override
                        .returns(
                          T::Array[
                          FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::TaggedSymbol
                          ]
                        )
                    end
                    def values
                    end
                  end
                end
              end

              class EmployeeDeduction < FinchAPI::BaseModel
                # Amount in cents for fixed type or basis points (1/100th of a percent) for
                #   percent type
                sig { returns(T.nilable(Integer)) }
                def amount
                end

                sig { params(_: Integer).returns(Integer) }
                def amount=(_)
                end

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                    )
                  )
                end
                def type
                end

                sig do
                  params(
                    _: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                  )
                    .returns(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                    )
                end
                def type=(_)
                end

                sig do
                  params(
                    amount: Integer,
                    type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                  )
                    .returns(T.attached_class)
                end
                def self.new(amount: nil, type: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        amount: Integer,
                        type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                      }
                    )
                end
                def to_hash
                end

                module Type
                  extend FinchAPI::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::TaggedSymbol
                      )
                    end

                  FIXED =
                    T.let(
                      :fixed,
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::TaggedSymbol
                    )
                  PERCENT =
                    T.let(
                      :percent,
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::TaggedSymbol
                    )

                  class << self
                    sig do
                      override
                        .returns(
                          T::Array[
                          FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::TaggedSymbol
                          ]
                        )
                    end
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
