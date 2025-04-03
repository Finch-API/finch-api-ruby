# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Individuals#retrieve_many
      class IndividualRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute options
        #
        #   @return [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        optional :options, -> { FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options }, nil?: true

        # @!attribute [r] requests
        #
        #   @return [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>, nil]
        optional :requests,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request] }

        # @!parse
        #   # @return [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>]
        #   attr_writer :requests

        # @!parse
        #   # @param options [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        #   # @param requests [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(options: nil, requests: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        class Options < FinchAPI::Internal::Type::BaseModel
          # @!attribute [r] include
          #
          #   @return [Array<String>, nil]
          optional :include, FinchAPI::Internal::Type::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :include

          # @!parse
          #   # @param include [Array<String>]
          #   #
          #   def initialize(include: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
        end

        class Request < FinchAPI::Internal::Type::BaseModel
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

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
