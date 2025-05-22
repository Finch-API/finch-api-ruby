# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Individuals#retrieve_many
      class IndividualRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute options
        #
        #   @return [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        optional :options, -> { FinchAPI::HRIS::IndividualRetrieveManyParams::Options }, nil?: true

        # @!attribute requests
        #
        #   @return [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>, nil]
        optional :requests,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::IndividualRetrieveManyParams::Request]
                 }

        # @!method initialize(options: nil, requests: nil, request_options: {})
        #   @param options [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        #   @param requests [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>]
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Options < FinchAPI::Internal::Type::BaseModel
          # @!attribute include
          #
          #   @return [Array<String>, nil]
          optional :include, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(include: nil)
          #   @param include [Array<String>]
        end

        class Request < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!method initialize(individual_id: nil)
          #   @param individual_id [String]
        end
      end
    end
  end
end
