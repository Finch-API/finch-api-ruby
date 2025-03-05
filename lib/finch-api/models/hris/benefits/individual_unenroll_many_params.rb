# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualUnenrollManyParams < FinchAPI::BaseModel
          # @!parse
          #   extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # @!attribute [r] individual_ids
          #   Array of individual_ids to unenroll.
          #
          #   @return [Array<String>, nil]
          optional :individual_ids, FinchAPI::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :individual_ids

          # @!parse
          #   # @param individual_ids [Array<String>]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(individual_ids: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
