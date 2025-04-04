# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#update
          class RuleUpdateParams < FinchAPI::Internal::Type::BaseModel
            # @!parse
            #   extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            # @!attribute [r] optional_property
            #
            #   @return [Object, nil]
            optional :optional_property, FinchAPI::Internal::Type::Unknown, api_name: :optionalProperty

            # @!parse
            #   # @return [Object]
            #   attr_writer :optional_property

            # @!parse
            #   # @param optional_property [Object]
            #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(optional_property: nil, request_options: {}, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
          end
        end
      end
    end
  end
end
