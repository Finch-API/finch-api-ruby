# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        # @see FinchAPI::Resources::HRIS::Company::PayStatementItem#list
        class PayStatementItemListParams < FinchAPI::Internal::Type::BaseModel
          # @!parse
          #   extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute [r] categories
          #   Comma-delimited list of pay statement item categories to filter on. If empty,
          #   defaults to all categories.
          #
          #   @return [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>, nil]
          optional :categories,
                   -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category] }

          # @!parse
          #   # @return [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>]
          #   attr_writer :categories

          # @!attribute [r] end_date
          #   The end date to retrieve pay statement items by via their last seen pay date in
          #   `YYYY-MM-DD` format.
          #
          #   @return [Date, nil]
          optional :end_date, Date

          # @!parse
          #   # @return [Date]
          #   attr_writer :end_date

          # @!attribute [r] name
          #   Case-insensitive partial match search by pay statement item name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!attribute [r] start_date
          #   The start date to retrieve pay statement items by via their last seen pay date
          #   (inclusive) in `YYYY-MM-DD` format.
          #
          #   @return [Date, nil]
          optional :start_date, Date

          # @!parse
          #   # @return [Date]
          #   attr_writer :start_date

          # @!attribute [r] type
          #   String search by pay statement item type.
          #
          #   @return [String, nil]
          optional :type, String

          # @!parse
          #   # @return [String]
          #   attr_writer :type

          # @!parse
          #   # @param categories [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>]
          #   # @param end_date [Date]
          #   # @param name [String]
          #   # @param start_date [Date]
          #   # @param type [String]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(categories: nil, end_date: nil, name: nil, start_date: nil, type: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

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
