# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#unenroll_many
        class IndividualUnenrollManyParams < FinchAPI::Internal::Type::BaseModel
          # @!parse
          #   extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute [r] individual_ids
          #   Array of individual_ids to unenroll.
          #
          #   @return [Array<String>, nil]
          optional :individual_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :individual_ids

          # @!parse
          #   # @param individual_ids [Array<String>]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(individual_ids: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
