# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#delete
          class RuleDeleteParams < FinchAPI::Internal::Type::BaseModel
            # @!parse
            #   extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            # @!parse
            #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(request_options: {}, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
          end
        end
      end
    end
  end
end
