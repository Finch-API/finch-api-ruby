# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrollManyParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # Array of the individual_id to enroll and a configuration object.
          sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual])) }
          attr_reader :individuals

          sig do
            params(
              individuals: T::Array[
                T.any(
                  FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual,
                  FinchAPI::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :individuals

          sig do
            params(
              individuals: T::Array[
                T.any(
                  FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual,
                  FinchAPI::Internal::AnyHash
                )
              ],
              request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(individuals: nil, request_options: {}); end

          sig do
            override
              .returns(
                {
                  individuals: T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual],
                  request_options: FinchAPI::RequestOptions
                }
              )
          end
          def to_hash; end

          class Individual < FinchAPI::Internal::Type::BaseModel
            sig do
              returns(
                T.nilable(FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration)
              )
            end
            attr_reader :configuration

            sig do
              params(
                configuration: T.any(
                  FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                  FinchAPI::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :configuration

            # Finch id (uuidv4) for the individual to enroll
            sig { returns(T.nilable(String)) }
            attr_reader :individual_id

            sig { params(individual_id: String).void }
            attr_writer :individual_id

            sig do
              params(
                configuration: T.any(
                  FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                  FinchAPI::Internal::AnyHash
                ),
                individual_id: String
              )
                .returns(T.attached_class)
            end
            def self.new(configuration: nil, individual_id: nil); end

            sig do
              override
                .returns(
                  {
                    configuration: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration,
                    individual_id: String
                  }
                )
            end
            def to_hash; end

            class Configuration < FinchAPI::Internal::Type::BaseModel
              # For HSA benefits only - whether the contribution limit is for an individual or
              #   family
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol
                  )
                )
              end
              attr_reader :annual_contribution_limit

              sig do
                params(
                  annual_contribution_limit: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol
                )
                  .void
              end
              attr_writer :annual_contribution_limit

              # Maximum annual amount in cents
              sig { returns(T.nilable(Integer)) }
              attr_accessor :annual_maximum

              # For retirement benefits only - whether catch up contributions are enabled
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :catch_up

              sig { params(catch_up: T::Boolean).void }
              attr_writer :catch_up

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution
                  )
                )
              end
              attr_reader :company_contribution

              sig do
                params(
                  company_contribution: T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :company_contribution

              # The date the enrollment will take effect
              sig { returns(T.nilable(Date)) }
              attr_reader :effective_date

              sig { params(effective_date: Date).void }
              attr_writer :effective_date

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                  )
                )
              end
              attr_reader :employee_deduction

              sig do
                params(
                  employee_deduction: T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .void
              end
              attr_writer :employee_deduction

              sig do
                params(
                  annual_contribution_limit: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol,
                  annual_maximum: T.nilable(Integer),
                  catch_up: T::Boolean,
                  company_contribution: T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                    FinchAPI::Internal::AnyHash
                  ),
                  effective_date: Date,
                  employee_deduction: T.any(
                    FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction,
                    FinchAPI::Internal::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(
                annual_contribution_limit: nil,
                annual_maximum: nil,
                catch_up: nil,
                company_contribution: nil,
                effective_date: nil,
                employee_deduction: nil
              ); end
              sig do
                override
                  .returns(
                    {
                      annual_contribution_limit: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::OrSymbol,
                      annual_maximum: T.nilable(Integer),
                      catch_up: T::Boolean,
                      company_contribution: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution,
                      effective_date: Date,
                      employee_deduction: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                    }
                  )
              end
              def to_hash; end

              # For HSA benefits only - whether the contribution limit is for an individual or
              #   family
              module AnnualContributionLimit
                extend FinchAPI::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
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

                sig do
                  override
                    .returns(
                      T::Array[
                        FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end

              class CompanyContribution < FinchAPI::Internal::Type::BaseModel
                # Amount in cents for fixed type or basis points (1/100th of a percent) for
                #   percent type
                sig { returns(T.nilable(Integer)) }
                attr_reader :amount

                sig { params(amount: Integer).void }
                attr_writer :amount

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                  )
                    .void
                end
                attr_writer :type

                sig do
                  params(
                    amount: Integer,
                    type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                  )
                    .returns(T.attached_class)
                end
                def self.new(amount: nil, type: nil); end

                sig do
                  override
                    .returns(
                      {
                        amount: Integer,
                        type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::OrSymbol
                      }
                    )
                end
                def to_hash; end

                module Type
                  extend FinchAPI::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        String,
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

                  sig do
                    override
                      .returns(
                        T::Array[
                          FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type::TaggedSymbol
                        ]
                      )
                  end
                  def self.values; end
                end
              end

              class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
                # Amount in cents for fixed type or basis points (1/100th of a percent) for
                #   percent type
                sig { returns(T.nilable(Integer)) }
                attr_reader :amount

                sig { params(amount: Integer).void }
                attr_writer :amount

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                  )
                    .void
                end
                attr_writer :type

                sig do
                  params(
                    amount: Integer,
                    type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                  )
                    .returns(T.attached_class)
                end
                def self.new(amount: nil, type: nil); end

                sig do
                  override
                    .returns(
                      {
                        amount: Integer,
                        type: FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::OrSymbol
                      }
                    )
                end
                def to_hash; end

                module Type
                  extend FinchAPI::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        String,
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

                  sig do
                    override
                      .returns(
                        T::Array[
                          FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type::TaggedSymbol
                        ]
                      )
                  end
                  def self.values; end
                end
              end
            end
          end
        end
      end
    end
  end
end
