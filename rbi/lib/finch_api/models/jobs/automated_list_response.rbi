# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedListResponse < FinchAPI::BaseModel
        sig { returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob]) }
        attr_accessor :data

        sig { returns(FinchAPI::Models::Jobs::AutomatedListResponse::Meta) }
        attr_reader :meta

        sig do
          params(
            meta: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta, FinchAPI::Internal::Util::AnyHash)
          )
            .void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob, FinchAPI::Internal::Util::AnyHash)],
            meta: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta, FinchAPI::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override
            .returns(
              {
                data: T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob],
                meta: FinchAPI::Models::Jobs::AutomatedListResponse::Meta
              }
            )
        end
        def to_hash
        end

        class Meta < FinchAPI::BaseModel
          # Information about remaining quotas for this connection. Only applicable for
          #   customers opted in to use Finch's Data Sync Refresh endpoint
          #   (`POST /jobs/automated`). Please contact a Finch representative for more
          #   details.
          sig { returns(T.nilable(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas)) }
          attr_reader :quotas

          sig do
            params(
              quotas: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, FinchAPI::Internal::Util::AnyHash)
            )
              .void
          end
          attr_writer :quotas

          sig do
            params(
              quotas: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, FinchAPI::Internal::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(quotas: nil)
          end

          sig { override.returns({quotas: FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas}) }
          def to_hash
          end

          class Quotas < FinchAPI::BaseModel
            sig { returns(T.nilable(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll)) }
            attr_reader :data_sync_all

            sig do
              params(
                data_sync_all: T.any(
                  FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :data_sync_all

            # Information about remaining quotas for this connection. Only applicable for
            #   customers opted in to use Finch's Data Sync Refresh endpoint
            #   (`POST /jobs/automated`). Please contact a Finch representative for more
            #   details.
            sig do
              params(
                data_sync_all: T.any(
                  FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(data_sync_all: nil)
            end

            sig do
              override.returns({data_sync_all: FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll})
            end
            def to_hash
            end

            class DataSyncAll < FinchAPI::BaseModel
              sig { returns(T.nilable(Integer)) }
              attr_reader :allowed_refreshes

              sig { params(allowed_refreshes: Integer).void }
              attr_writer :allowed_refreshes

              sig { returns(T.nilable(Integer)) }
              attr_reader :remaining_refreshes

              sig { params(remaining_refreshes: Integer).void }
              attr_writer :remaining_refreshes

              sig do
                params(allowed_refreshes: Integer, remaining_refreshes: Integer).returns(T.attached_class)
              end
              def self.new(allowed_refreshes: nil, remaining_refreshes: nil)
              end

              sig { override.returns({allowed_refreshes: Integer, remaining_refreshes: Integer}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
