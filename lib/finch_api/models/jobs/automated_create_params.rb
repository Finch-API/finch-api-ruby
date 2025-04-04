# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#create
      class AutomatedCreateParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

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

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # The type of job to start.
        module Type
          extend FinchAPI::Internal::Type::Enum

          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class Params < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #   The unique ID of the individual for W-4 data sync.
          #
          #   @return [String]
          required :individual_id, String

          # @!parse
          #   # @param individual_id [String]
          #   #
          #   def initialize(individual_id:, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
