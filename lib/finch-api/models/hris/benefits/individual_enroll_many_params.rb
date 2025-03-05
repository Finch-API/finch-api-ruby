# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrollManyParams < FinchAPI::BaseModel
          # @!parse
          #   extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # @!attribute [r] individuals
          #   Array of the individual_id to enroll and a configuration object.
          #
          #   @return [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>, nil]
          optional :individuals,
                   -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual] }

          # @!parse
          #   # @return [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>]
          #   attr_writer :individuals

          # @!parse
          #   # @param individuals [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(individuals: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          class Individual < FinchAPI::BaseModel
            # @!attribute [r] configuration
            #
            #   @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration, nil]
            optional :configuration,
                     -> { FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration]
            #   attr_writer :configuration

            # @!attribute [r] individual_id
            #   Finch id (uuidv4) for the individual to enroll
            #
            #   @return [String, nil]
            optional :individual_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :individual_id

            # @!parse
            #   # @param configuration [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration]
            #   # @param individual_id [String]
            #   #
            #   def initialize(configuration: nil, individual_id: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            class Configuration < FinchAPI::BaseModel
              # @!attribute [r] annual_contribution_limit
              #   For HSA benefits only - whether the contribution limit is for an individual or
              #     family
              #
              #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit, nil]
              optional :annual_contribution_limit,
                       enum: -> { FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit }

              # @!parse
              #   # @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit]
              #   attr_writer :annual_contribution_limit

              # @!attribute annual_maximum
              #   Maximum annual amount in cents
              #
              #   @return [Integer, nil]
              optional :annual_maximum, Integer, nil?: true

              # @!attribute [r] catch_up
              #   For retirement benefits only - whether catch up contributions are enabled
              #
              #   @return [Boolean, nil]
              optional :catch_up, FinchAPI::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :catch_up

              # @!attribute [r] company_contribution
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution, nil]
              optional :company_contribution,
                       -> { FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution }

              # @!parse
              #   # @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution]
              #   attr_writer :company_contribution

              # @!attribute [r] employee_deduction
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction, nil]
              optional :employee_deduction,
                       -> { FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction }

              # @!parse
              #   # @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction]
              #   attr_writer :employee_deduction

              # @!parse
              #   # @param annual_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::AnnualContributionLimit]
              #   # @param annual_maximum [Integer, nil]
              #   # @param catch_up [Boolean]
              #   # @param company_contribution [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution]
              #   # @param employee_deduction [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction]
              #   #
              #   def initialize(
              #     annual_contribution_limit: nil,
              #     annual_maximum: nil,
              #     catch_up: nil,
              #     company_contribution: nil,
              #     employee_deduction: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | FinchAPI::BaseModel) -> void

              # @abstract
              #
              # For HSA benefits only - whether the contribution limit is for an individual or
              #   family
              #
              # @example
              # ```ruby
              # case annual_contribution_limit
              # in :individual
              #   # ...
              # in :family
              #   # ...
              # end
              # ```
              class AnnualContributionLimit < FinchAPI::Enum
                INDIVIDUAL = :individual
                FAMILY = :family

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              class CompanyContribution < FinchAPI::BaseModel
                # @!attribute [r] amount
                #   Amount in cents for fixed type or basis points (1/100th of a percent) for
                #     percent type
                #
                #   @return [Integer, nil]
                optional :amount, Integer

                # @!parse
                #   # @return [Integer]
                #   attr_writer :amount

                # @!attribute [r] type
                #
                #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type, nil]
                optional :type,
                         enum: -> { FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type }

                # @!parse
                #   # @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type]
                #   attr_writer :type

                # @!parse
                #   # @param amount [Integer]
                #   # @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::CompanyContribution::Type]
                #   #
                #   def initialize(amount: nil, type: nil, **) = super

                # def initialize: (Hash | FinchAPI::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :fixed
                #   # ...
                # in :percent
                #   # ...
                # end
                # ```
                class Type < FinchAPI::Enum
                  FIXED = :fixed
                  PERCENT = :percent

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class EmployeeDeduction < FinchAPI::BaseModel
                # @!attribute [r] amount
                #   Amount in cents for fixed type or basis points (1/100th of a percent) for
                #     percent type
                #
                #   @return [Integer, nil]
                optional :amount, Integer

                # @!parse
                #   # @return [Integer]
                #   attr_writer :amount

                # @!attribute [r] type
                #
                #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type, nil]
                optional :type,
                         enum: -> { FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type }

                # @!parse
                #   # @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type]
                #   attr_writer :type

                # @!parse
                #   # @param amount [Integer]
                #   # @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual::Configuration::EmployeeDeduction::Type]
                #   #
                #   def initialize(amount: nil, type: nil, **) = super

                # def initialize: (Hash | FinchAPI::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :fixed
                #   # ...
                # in :percent
                #   # ...
                # end
                # ```
                class Type < FinchAPI::Enum
                  FIXED = :fixed
                  PERCENT = :percent

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end
            end
          end
        end
      end
    end
  end
end
