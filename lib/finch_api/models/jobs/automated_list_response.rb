# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#list
      class AutomatedListResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<FinchAPI::Models::Jobs::AutomatedAsyncJob>]
        required :data, -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Jobs::AutomatedAsyncJob] }

        # @!attribute meta
        #
        #   @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta]
        required :meta, -> { FinchAPI::Models::Jobs::AutomatedListResponse::Meta }

        # @!parse
        #   # @param data [Array<FinchAPI::Models::Jobs::AutomatedAsyncJob>]
        #   # @param meta [FinchAPI::Models::Jobs::AutomatedListResponse::Meta]
        #   #
        #   def initialize(data:, meta:, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # @see FinchAPI::Models::Jobs::AutomatedListResponse#meta
        class Meta < FinchAPI::Internal::Type::BaseModel
          # @!attribute [r] quotas
          #   Information about remaining quotas for this connection. Only applicable for
          #   customers opted in to use Finch's Data Sync Refresh endpoint
          #   (`POST /jobs/automated`). Please contact a Finch representative for more
          #   details.
          #
          #   @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, nil]
          optional :quotas, -> { FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas }

          # @!parse
          #   # @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas]
          #   attr_writer :quotas

          # @!parse
          #   # @param quotas [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas]
          #   #
          #   def initialize(quotas: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::Jobs::AutomatedListResponse::Meta#quotas
          class Quotas < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] data_sync_all
            #
            #   @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll, nil]
            optional :data_sync_all, -> { FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll }

            # @!parse
            #   # @return [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll]
            #   attr_writer :data_sync_all

            # @!parse
            #   # Information about remaining quotas for this connection. Only applicable for
            #   # customers opted in to use Finch's Data Sync Refresh endpoint
            #   # (`POST /jobs/automated`). Please contact a Finch representative for more
            #   # details.
            #   #
            #   # @param data_sync_all [FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll]
            #   #
            #   def initialize(data_sync_all: nil, **) = super

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas#data_sync_all
            class DataSyncAll < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] allowed_refreshes
              #
              #   @return [Integer, nil]
              optional :allowed_refreshes, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :allowed_refreshes

              # @!attribute [r] remaining_refreshes
              #
              #   @return [Integer, nil]
              optional :remaining_refreshes, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :remaining_refreshes

              # @!parse
              #   # @param allowed_refreshes [Integer]
              #   # @param remaining_refreshes [Integer]
              #   #
              #   def initialize(allowed_refreshes: nil, remaining_refreshes: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
