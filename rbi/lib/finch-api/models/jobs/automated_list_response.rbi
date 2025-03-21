# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedListResponse < FinchAPI::BaseModel
        sig { returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob]) }
        def data
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob])
            .returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob])
        end
        def data=(_)
        end

        sig { returns(FinchAPI::Models::Jobs::AutomatedListResponse::Meta) }
        def meta
        end

        sig do
          params(_: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta, FinchAPI::Util::AnyHash))
        end
        def meta=(_)
        end

        sig do
          params(
            data: T::Array[T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob, FinchAPI::Util::AnyHash)],
            meta: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta, FinchAPI::Util::AnyHash)
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
          def quotas
          end

          sig do
            params(_: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, FinchAPI::Util::AnyHash))
              .returns(T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, FinchAPI::Util::AnyHash))
          end
          def quotas=(_)
          end

          sig do
            params(
              quotas: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas, FinchAPI::Util::AnyHash)
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
            def data_sync_all
            end

            sig do
              params(
                _: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll, FinchAPI::Util::AnyHash)
              )
                .returns(
                  T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll, FinchAPI::Util::AnyHash)
                )
            end
            def data_sync_all=(_)
            end

            # Information about remaining quotas for this connection. Only applicable for
            #   customers opted in to use Finch's Data Sync Refresh endpoint
            #   (`POST /jobs/automated`). Please contact a Finch representative for more
            #   details.
            sig do
              params(
                data_sync_all: T.any(FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll, FinchAPI::Util::AnyHash)
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
              def allowed_refreshes
              end

              sig { params(_: Integer).returns(Integer) }
              def allowed_refreshes=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def remaining_refreshes
              end

              sig { params(_: Integer).returns(Integer) }
              def remaining_refreshes=(_)
              end

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
