# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#create
      class AutomatedCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute body
        #
        #   @return [FinchAPI::Models::Jobs::AutomatedCreateParams::Body::DataSyncAll, FinchAPI::Models::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync]
        required :body, union: -> { FinchAPI::Jobs::AutomatedCreateParams::Body }

        # @!method initialize(body:, request_options: {})
        #   @param body [FinchAPI::Models::Jobs::AutomatedCreateParams::Body::DataSyncAll, FinchAPI::Models::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync]
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        module Body
          extend FinchAPI::Internal::Type::Union

          discriminator :type

          variant :data_sync_all, -> { FinchAPI::Jobs::AutomatedCreateParams::Body::DataSyncAll }

          variant :w4_form_employee_sync, -> { FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync }

          class DataSyncAll < FinchAPI::Internal::Type::BaseModel
            # @!attribute type
            #   The type of job to start.
            #
            #   @return [Symbol, :data_sync_all]
            required :type, const: :data_sync_all

            # @!method initialize(type: :data_sync_all)
            #   @param type [Symbol, :data_sync_all] The type of job to start.
          end

          class W4FormEmployeeSync < FinchAPI::Internal::Type::BaseModel
            # @!attribute params
            #
            #   @return [FinchAPI::Models::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params]
            required :params, -> { FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params }

            # @!attribute type
            #   The type of job to start.
            #
            #   @return [Symbol, :w4_form_employee_sync]
            required :type, const: :w4_form_employee_sync

            # @!method initialize(params:, type: :w4_form_employee_sync)
            #   @param params [FinchAPI::Models::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params]
            #
            #   @param type [Symbol, :w4_form_employee_sync] The type of job to start.

            # @see FinchAPI::Models::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync#params
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

          # @!method self.variants
          #   @return [Array(FinchAPI::Models::Jobs::AutomatedCreateParams::Body::DataSyncAll, FinchAPI::Models::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync)]
        end
      end
    end
  end
end
