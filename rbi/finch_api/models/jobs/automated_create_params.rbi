# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Jobs::AutomatedCreateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              FinchAPI::Jobs::AutomatedCreateParams::Body::DataSyncAll,
              FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync
            )
          )
        end
        attr_accessor :body

        sig do
          params(
            body:
              T.any(
                FinchAPI::Jobs::AutomatedCreateParams::Body::DataSyncAll::OrHash,
                FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::OrHash
              ),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(body:, request_options: {})
        end

        sig do
          override.returns(
            {
              body:
                T.any(
                  FinchAPI::Jobs::AutomatedCreateParams::Body::DataSyncAll,
                  FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync
                ),
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Body
          extend FinchAPI::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                FinchAPI::Jobs::AutomatedCreateParams::Body::DataSyncAll,
                FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync
              )
            end

          class DataSyncAll < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Jobs::AutomatedCreateParams::Body::DataSyncAll,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The type of job to start.
            sig { returns(Symbol) }
            attr_accessor :type

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(
              # The type of job to start.
              type: :data_sync_all
            )
            end

            sig { override.returns({ type: Symbol }) }
            def to_hash
            end
          end

          class W4FormEmployeeSync < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(
                FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params
              )
            end
            attr_reader :params

            sig do
              params(
                params:
                  FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params::OrHash
              ).void
            end
            attr_writer :params

            # The type of job to start.
            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                params:
                  FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              params:,
              # The type of job to start.
              type: :w4_form_employee_sync
            )
            end

            sig do
              override.returns(
                {
                  params:
                    FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            class Params < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Jobs::AutomatedCreateParams::Body::W4FormEmployeeSync::Params,
                    FinchAPI::Internal::AnyHash
                  )
                end

              # The unique ID of the individual for W-4 data sync.
              sig { returns(String) }
              attr_accessor :individual_id

              sig { params(individual_id: String).returns(T.attached_class) }
              def self.new(
                # The unique ID of the individual for W-4 data sync.
                individual_id:
              )
              end

              sig { override.returns({ individual_id: String }) }
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[FinchAPI::Jobs::AutomatedCreateParams::Body::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
