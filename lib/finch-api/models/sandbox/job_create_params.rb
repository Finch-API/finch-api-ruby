# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class JobCreateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute type
        #   The type of job to start. Currently the only supported type is `data_sync_all`
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::JobCreateParams::Type]
        required :type, enum: -> { FinchAPI::Models::Sandbox::JobCreateParams::Type }

        # @!parse
        #   # @param type [Symbol, FinchAPI::Models::Sandbox::JobCreateParams::Type]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(type:, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # @abstract
        #
        # The type of job to start. Currently the only supported type is `data_sync_all`
        #
        # @example
        # ```ruby
        # case type
        # in :data_sync_all
        #   # ...
        # end
        # ```
        class Type < FinchAPI::Enum
          DATA_SYNC_ALL = :data_sync_all

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
