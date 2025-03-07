# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute type
        #   The type of job to start.
        #
        #   @return [Symbol, FinchAPI::Models::Jobs::AutomatedCreateParams::Type]
        required :type, enum: -> { FinchAPI::Models::Jobs::AutomatedCreateParams::Type }

        # @!attribute params
        #
        #   @return [FinchAPI::Models::Jobs::AutomatedCreateParams::Params]
        required :params, -> { FinchAPI::Models::Jobs::AutomatedCreateParams::Params }

        # @!parse
        #   # @param type [Symbol, FinchAPI::Models::Jobs::AutomatedCreateParams::Type]
        #   # @param params [FinchAPI::Models::Jobs::AutomatedCreateParams::Params]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(type:, params:, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # @abstract
        #
        # The type of job to start.
        class Type < FinchAPI::Enum
          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync

          finalize!
        end

        class Params < FinchAPI::BaseModel
          # @!attribute individual_id
          #   The unique ID of the individual for W-4 data sync.
          #
          #   @return [String]
          required :individual_id, String

          # @!parse
          #   # @param individual_id [String]
          #   #
          #   def initialize(individual_id:, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
