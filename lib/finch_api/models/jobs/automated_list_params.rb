# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#list
      class AutomatedListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute limit
        #   Number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Index to start from (defaults to 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(limit: nil, offset: nil, request_options: {})
        #   @param limit [Integer] Number of items to return
        #
        #   @param offset [Integer] Index to start from (defaults to 0)
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
