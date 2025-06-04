# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#enroll_many
        class IndividualEnrollManyParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute individuals
          #   Array of the individual_id to enroll and a configuration object.
          #
          #   @return [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>, nil]
          optional :individuals,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual]
                   }

          # @!method initialize(individuals: nil, request_options: {})
          #   @param individuals [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>] Array of the individual_id to enroll and a configuration object.
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

          class Individual < FinchAPI::Internal::Type::BaseModel
            # @!attribute configuration
            #
            #   @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration, nil]
            optional :configuration,
                     -> { FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration }

            # @!attribute individual_id
            #   Finch id (uuidv4) for the individual to enroll
            #
            #   @return [String, nil]
            optional :individual_id, String

            # @!method initialize(configuration: nil, individual_id: nil)
            #   @param configuration [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration]
            #
            #   @param individual_id [String] Finch id (uuidv4) for the individual to enroll

            # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual#configuration
            class Configuration < FinchAPI::Internal::Type::BaseModel
              # @!attribute annual_contribution_limit
              #   For HSA benefits only - whether the contribution limit is for an individual or
              #   family
              #
              #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit, nil]
              optional :annual_contribution_limit,
                       enum: -> {
                         FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit
                       }

              # @!attribute annual_maximum
              #   Maximum annual amount in cents
              #
              #   @return [Integer, nil]
              optional :annual_maximum, Integer, nil?: true

              # @!attribute catch_up
              #   For retirement benefits only - whether catch up contributions are enabled
              #
              #   @return [Boolean, nil]
              optional :catch_up, FinchAPI::Internal::Type::Boolean

              # @!attribute company_contribution
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution, nil]
              optional :company_contribution,
                       -> {
                         FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution
                       }

              # @!attribute effective_date
              #   The date the enrollment will take effect
              #
              #   @return [Date, nil]
              optional :effective_date, Date

              # @!attribute employee_deduction
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction, nil]
              optional :employee_deduction,
                       -> {
                         FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction
                       }

              # @!method initialize(annual_contribution_limit: nil, annual_maximum: nil, catch_up: nil, company_contribution: nil, effective_date: nil, employee_deduction: nil)
              #   Some parameter documentations has been truncated, see
              #   {FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration}
              #   for more details.
              #
              #   @param annual_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit] For HSA benefits only - whether the contribution limit is for an individual or f
              #
              #   @param annual_maximum [Integer, nil] Maximum annual amount in cents
              #
              #   @param catch_up [Boolean] For retirement benefits only - whether catch up contributions are enabled
              #
              #   @param company_contribution [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution]
              #
              #   @param effective_date [Date] The date the enrollment will take effect
              #
              #   @param employee_deduction [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction]

              # For HSA benefits only - whether the contribution limit is for an individual or
              # family
              #
              # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration#annual_contribution_limit
              module AnnualContributionLimit
                extend FinchAPI::Internal::Type::Enum

                INDIVIDUAL = :individual
                FAMILY = :family

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration#company_contribution
              class CompanyContribution < FinchAPI::Internal::Type::BaseModel
                # @!attribute amount
                #   Amount in cents for fixed type or basis points (1/100th of a percent) for
                #   percent type
                #
                #   @return [Integer, nil]
                optional :amount, Integer

                # @!attribute type
                #
                #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type, nil]
                optional :type,
                         enum: -> {
                           FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type
                         }

                # @!method initialize(amount: nil, type: nil)
                #   Some parameter documentations has been truncated, see
                #   {FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution}
                #   for more details.
                #
                #   @param amount [Integer] Amount in cents for fixed type or basis points (1/100th of a percent) for percen
                #
                #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type]

                # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution#type
                module Type
                  extend FinchAPI::Internal::Type::Enum

                  FIXED = :fixed
                  PERCENT = :percent

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration#employee_deduction
              class EmployeeDeduction < FinchAPI::Internal::Type::BaseModel
                # @!attribute amount
                #   Amount in cents for fixed type or basis points (1/100th of a percent) for
                #   percent type
                #
                #   @return [Integer, nil]
                optional :amount, Integer

                # @!attribute type
                #
                #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type, nil]
                optional :type,
                         enum: -> {
                           FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type
                         }

                # @!method initialize(amount: nil, type: nil)
                #   Some parameter documentations has been truncated, see
                #   {FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction}
                #   for more details.
                #
                #   @param amount [Integer] Amount in cents for fixed type or basis points (1/100th of a percent) for percen
                #
                #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type]

                # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction#type
                module Type
                  extend FinchAPI::Internal::Type::Enum

                  FIXED = :fixed
                  PERCENT = :percent

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end
        end
      end
    end
  end
end
