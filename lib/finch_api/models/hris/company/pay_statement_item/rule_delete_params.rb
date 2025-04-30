# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#delete
          class RuleDeleteParams < FinchAPI::Internal::Type::BaseModel
            extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
