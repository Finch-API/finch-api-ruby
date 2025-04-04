# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        # @see FinchAPI::Resources::HRIS::Company::PayStatementItem#list
        class PayStatementItemListResponse < FinchAPI::Internal::Type::BaseModel
          # @!attribute [r] attributes
          #   The attributes of the pay statement item.
          #
          #   @return [FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes, nil]
          optional :attributes, -> { FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes }

          # @!parse
          #   # @return [FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] category
          #   The category of the pay statement item.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category, nil]
          optional :category, enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category }

          # @!parse
          #   # @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category]
          #   attr_writer :category

          # @!attribute [r] name
          #   The name of the pay statement item.
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!parse
          #   # @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes]
          #   # @param category [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category]
          #   # @param name [String]
          #   #
          #   def initialize(attributes: nil, category: nil, name: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::Company::PayStatementItemListResponse#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute employer
            #   `true` if the amount is paid by the employers. This field is only available for
            #     taxes.
            #
            #   @return [Boolean, nil]
            optional :employer, FinchAPI::Internal::Type::BooleanModel, nil?: true

            # @!attribute metadata
            #   The metadata of the pay statement item derived by the rules engine if available.
            #     Each attribute will be a key-value pair defined by a rule.
            #
            #   @return [Object, nil]
            optional :metadata, FinchAPI::Internal::Type::Unknown, nil?: true

            # @!attribute pre_tax
            #   `true` if the pay statement item is pre-tax. This field is only available for
            #     employee deductions.
            #
            #   @return [Boolean, nil]
            optional :pre_tax, FinchAPI::Internal::Type::BooleanModel, nil?: true

            # @!attribute type
            #   The type of the pay statement item.
            #
            #   @return [String, nil]
            optional :type, String, nil?: true

            # @!parse
            #   # The attributes of the pay statement item.
            #   #
            #   # @param employer [Boolean, nil]
            #   # @param metadata [Object, nil]
            #   # @param pre_tax [Boolean, nil]
            #   # @param type [String, nil]
            #   #
            #   def initialize(employer: nil, metadata: nil, pre_tax: nil, type: nil, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
          end

          # The category of the pay statement item.
          #
          # @see FinchAPI::Models::HRIS::Company::PayStatementItemListResponse#category
          module Category
            extend FinchAPI::Internal::Type::Enum

            EARNINGS = :earnings
            TAXES = :taxes
            EMPLOYEE_DEDUCTIONS = :employee_deductions
            EMPLOYER_CONTRIBUTIONS = :employer_contributions

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
