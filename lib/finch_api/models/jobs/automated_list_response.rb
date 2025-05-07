# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#list
      class AutomatedListResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<FinchAPI::Jobs::AutomatedAsyncJob>]
        required :data, -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Jobs::AutomatedAsyncJob] }

        # @!attribute meta
        #
        #   @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta]
        required :meta, -> { FinchAPI::Models::Jobs::AutomatedListResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<FinchAPI::Jobs::AutomatedAsyncJob>]
        #   @param meta [FinchAPI::Models::Jobs::AutomatedListResponse::Meta]

        # @see FinchAPI::Models::Jobs::AutomatedListResponse#meta
        class Meta < FinchAPI::Internal::Type::BaseModel
          # @!attribute quotas
          #   Information about remaining quotas for this connection. Only applicable for
          #   customers opted in to use Finch's Data Sync Refresh endpoint
          #   (`POST /jobs/automated`). Please contact a Finch representative for more
          #   details.
          #
          #   @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, nil]
          optional :quotas, -> { FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas }

          # @!method initialize(quotas: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::Jobs::AutomatedListResponse::Meta} for more details.
          #
          #   @param quotas [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas] Information about remaining quotas for this connection. Only applicable for cust

          # @see FinchAPI::Models::Jobs::AutomatedListResponse::Meta#quotas
          class Quotas < FinchAPI::Internal::Type::BaseModel
            # @!attribute data_sync_all
            #
            #   @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll, nil]
            optional :data_sync_all, -> { FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll }

            # @!method initialize(data_sync_all: nil)
            #   Information about remaining quotas for this connection. Only applicable for
            #   customers opted in to use Finch's Data Sync Refresh endpoint
            #   (`POST /jobs/automated`). Please contact a Finch representative for more
            #   details.
            #
            #   @param data_sync_all [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll]

            # @see FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas#data_sync_all
            class DataSyncAll < FinchAPI::Internal::Type::BaseModel
              # @!attribute allowed_refreshes
              #
              #   @return [Integer, nil]
              optional :allowed_refreshes, Integer

              # @!attribute remaining_refreshes
              #
              #   @return [Integer, nil]
              optional :remaining_refreshes, Integer

              # @!method initialize(allowed_refreshes: nil, remaining_refreshes: nil)
              #   @param allowed_refreshes [Integer]
              #   @param remaining_refreshes [Integer]
            end
          end
        end
      end
    end
  end
end
