# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class IndividualRetrieveManyParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute options
        #
        #   @return [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        optional :options, -> { FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options }, nil?: true

        # @!attribute [r] requests
        #
        #   @return [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>, nil]
        optional :requests,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request] }

        # @!parse
        #   # @return [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>]
        #   attr_writer :requests

        # @!parse
        #   # @param options [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        #   # @param requests [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(options: nil, requests: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class Options < FinchAPI::BaseModel
          # @!attribute [r] include
          #
          #   @return [Array<String>, nil]
          optional :include, FinchAPI::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :include

          # @!parse
          #   # @param include [Array<String>]
          #   #
          #   def initialize(include: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end

        class Request < FinchAPI::BaseModel
          # @!attribute [r] individual_id
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!parse
          #   # @param individual_id [String]
          #   #
          #   def initialize(individual_id: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
