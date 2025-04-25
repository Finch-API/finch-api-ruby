# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#update
          class RuleUpdateParams < FinchAPI::Internal::Type::BaseModel
            extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            # @!attribute optional_property
            #
            #   @return [Object, nil]
            optional :optional_property, FinchAPI::Internal::Type::Unknown, api_name: :optionalProperty

            # @!method initialize(optional_property: nil, request_options: {})
            #   @param optional_property [Object]
            #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
