# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Jobs#create
      class JobCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute type
        #   The type of job to start. Currently the only supported type is `data_sync_all`
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::JobCreateParams::Type]
        required :type, enum: -> { FinchAPI::Sandbox::JobCreateParams::Type }

        # @!method initialize(type:, request_options: {})
        #   @param type [Symbol, FinchAPI::Models::Sandbox::JobCreateParams::Type] The type of job to start. Currently the only supported type is `data_sync_all`
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        # The type of job to start. Currently the only supported type is `data_sync_all`
        module Type
          extend FinchAPI::Internal::Type::Enum

          DATA_SYNC_ALL = :data_sync_all

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
