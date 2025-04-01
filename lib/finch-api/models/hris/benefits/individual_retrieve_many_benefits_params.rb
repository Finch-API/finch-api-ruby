# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#retrieve_many_benefits
        class IndividualRetrieveManyBenefitsParams < FinchAPI::BaseModel
          # @!parse
          #   extend FinchAPI::Type::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # @!attribute [r] individual_ids
          #   comma-delimited list of stable Finch uuids for each individual. If empty,
          #     defaults to all individuals
          #
          #   @return [String, nil]
          optional :individual_ids, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_ids

          # @!parse
          #   # @param individual_ids [String]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(individual_ids: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
