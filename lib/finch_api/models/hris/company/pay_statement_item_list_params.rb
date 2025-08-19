# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        # @see FinchAPI::Resources::HRIS::Company::PayStatementItem#list
        class PayStatementItemListParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute categories
          #   Comma-delimited list of pay statement item categories to filter on. If empty,
          #   defaults to all categories.
          #
          #   @return [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>, nil]
          optional :categories,
                   -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::Company::PayStatementItemListParams::Category] }

          # @!attribute end_date
          #   The end date to retrieve pay statement items by via their last seen pay date in
          #   `YYYY-MM-DD` format.
          #
          #   @return [Date, nil]
          optional :end_date, Date

          # @!attribute name
          #   Case-insensitive partial match search by pay statement item name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute start_date
          #   The start date to retrieve pay statement items by via their last seen pay date
          #   (inclusive) in `YYYY-MM-DD` format.
          #
          #   @return [Date, nil]
          optional :start_date, Date

          # @!attribute type
          #   String search by pay statement item type.
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(categories: nil, end_date: nil, name: nil, start_date: nil, type: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::Company::PayStatementItemListParams} for more details.
          #
          #   @param categories [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>] Comma-delimited list of pay statement item categories to filter on. If empty, de
          #
          #   @param end_date [Date] The end date to retrieve pay statement items by via their last seen pay date in
          #
          #   @param name [String] Case-insensitive partial match search by pay statement item name.
          #
          #   @param start_date [Date] The start date to retrieve pay statement items by via their last seen pay date (
          #
          #   @param type [String] String search by pay statement item type.
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

          module Category
            extend FinchAPI::Internal::Type::Enum

            EARNINGS = :earnings
            TAXES = :taxes
            EMPLOYEE_DEDUCTIONS = :employee_deductions
            EMPLOYER_CONTRIBUTIONS = :employer_contributions

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
