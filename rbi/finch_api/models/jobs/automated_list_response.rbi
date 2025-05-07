# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedListResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        sig { returns(T::Array[FinchAPI::Jobs::AutomatedAsyncJob]) }
        attr_accessor :data

        sig { returns(FinchAPI::Models::Jobs::AutomatedListResponse::Meta) }
        attr_reader :meta

        sig do
          params(
            meta: FinchAPI::Models::Jobs::AutomatedListResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[FinchAPI::Jobs::AutomatedAsyncJob::OrHash],
            meta: FinchAPI::Models::Jobs::AutomatedListResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[FinchAPI::Jobs::AutomatedAsyncJob],
              meta: FinchAPI::Models::Jobs::AutomatedListResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # Information about remaining quotas for this connection. Only applicable for
          # customers opted in to use Finch's Data Sync Refresh endpoint
          # (`POST /jobs/automated`). Please contact a Finch representative for more
          # details.
          sig do
            returns(
              T.nilable(
                FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas
              )
            )
          end
          attr_reader :quotas

          sig do
            params(
              quotas:
                FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::OrHash
            ).void
          end
          attr_writer :quotas

          sig do
            params(
              quotas:
                FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Information about remaining quotas for this connection. Only applicable for
            # customers opted in to use Finch's Data Sync Refresh endpoint
            # (`POST /jobs/automated`). Please contact a Finch representative for more
            # details.
            quotas: nil
          )
          end

          sig do
            override.returns(
              {
                quotas:
                  FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas
              }
            )
          end
          def to_hash
          end

          class Quotas < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

            sig do
              returns(
                T.nilable(
                  FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll
                )
              )
            end
            attr_reader :data_sync_all

            sig do
              params(
                data_sync_all:
                  FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll::OrHash
              ).void
            end
            attr_writer :data_sync_all

            # Information about remaining quotas for this connection. Only applicable for
            # customers opted in to use Finch's Data Sync Refresh endpoint
            # (`POST /jobs/automated`). Please contact a Finch representative for more
            # details.
            sig do
              params(
                data_sync_all:
                  FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data_sync_all: nil)
            end

            sig do
              override.returns(
                {
                  data_sync_all:
                    FinchAPI::Models::Jobs::AutomatedListResponse::Meta::Quotas::DataSyncAll
                }
              )
            end
            def to_hash
            end

            class DataSyncAll < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

              sig { returns(T.nilable(Integer)) }
              attr_reader :allowed_refreshes

              sig { params(allowed_refreshes: Integer).void }
              attr_writer :allowed_refreshes

              sig { returns(T.nilable(Integer)) }
              attr_reader :remaining_refreshes

              sig { params(remaining_refreshes: Integer).void }
              attr_writer :remaining_refreshes

              sig do
                params(
                  allowed_refreshes: Integer,
                  remaining_refreshes: Integer
                ).returns(T.attached_class)
              end
              def self.new(allowed_refreshes: nil, remaining_refreshes: nil)
              end

              sig do
                override.returns(
                  { allowed_refreshes: Integer, remaining_refreshes: Integer }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
