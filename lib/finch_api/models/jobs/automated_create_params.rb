# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#create
      class AutomatedCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute type
        #   The type of job to start.
        #
        #   @return [Symbol, FinchAPI::Jobs::AutomatedCreateParams::Type]
        required :type, enum: -> { FinchAPI::Jobs::AutomatedCreateParams::Type }

        # @!attribute params
        #
        #   @return [FinchAPI::Jobs::AutomatedCreateParams::Params]
        required :params, -> { FinchAPI::Jobs::AutomatedCreateParams::Params }

        # @!method initialize(type:, params:, request_options: {})
        #   @param type [Symbol, FinchAPI::Jobs::AutomatedCreateParams::Type] The type of job to start.
        #
        #   @param params [FinchAPI::Jobs::AutomatedCreateParams::Params]
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        # The type of job to start.
        module Type
          extend FinchAPI::Internal::Type::Enum

          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Params < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #   The unique ID of the individual for W-4 data sync.
          #
          #   @return [String]
          required :individual_id, String

          # @!method initialize(individual_id:)
          #   @param individual_id [String] The unique ID of the individual for W-4 data sync.
        end
      end
    end
  end
end
