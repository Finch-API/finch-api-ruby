# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        # @see FinchAPI::Resources::HRIS::Company::PayStatementItem#list
        class PayStatementItemListResponse < FinchAPI::Internal::Type::BaseModel
          # @!attribute attributes
          #   The attributes of the pay statement item.
          #
          #   @return [FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes, nil]
          optional :attributes, -> { FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes }

          # @!attribute category
          #   The category of the pay statement item.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category, nil]
          optional :category, enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category }

          # @!attribute name
          #   The name of the pay statement item.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(attributes: nil, category: nil, name: nil)
          #   @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes] The attributes of the pay statement item.
          #
          #   @param category [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category] The category of the pay statement item.
          #
          #   @param name [String] The name of the pay statement item.

          # @see FinchAPI::Models::HRIS::Company::PayStatementItemListResponse#attributes
          class Attributes < FinchAPI::Internal::Type::BaseModel
            # @!attribute employer
            #   `true` if the amount is paid by the employers. This field is only available for
            #   taxes.
            #
            #   @return [Boolean, nil]
            optional :employer, FinchAPI::Internal::Type::Boolean, nil?: true

            # @!attribute metadata
            #   The metadata of the pay statement item derived by the rules engine if available.
            #   Each attribute will be a key-value pair defined by a rule.
            #
            #   @return [Hash{Symbol=>Object, nil}, nil]
            optional :metadata,
                     FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true],
                     nil?: true

            # @!attribute pre_tax
            #   `true` if the pay statement item is pre-tax. This field is only available for
            #   employee deductions.
            #
            #   @return [Boolean, nil]
            optional :pre_tax, FinchAPI::Internal::Type::Boolean, nil?: true

            # @!attribute type
            #   The type of the pay statement item.
            #
            #   @return [String, nil]
            optional :type, String, nil?: true

            # @!method initialize(employer: nil, metadata: nil, pre_tax: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes} for
            #   more details.
            #
            #   The attributes of the pay statement item.
            #
            #   @param employer [Boolean, nil] `true` if the amount is paid by the employers. This field is only available for
            #
            #   @param metadata [Hash{Symbol=>Object, nil}, nil] The metadata of the pay statement item derived by the rules engine if available.
            #
            #   @param pre_tax [Boolean, nil] `true` if the pay statement item is pre-tax. This field is only available for em
            #
            #   @param type [String, nil] The type of the pay statement item.
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

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
