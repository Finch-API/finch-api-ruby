# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::EmploymentRetrieveManyParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The array of batch requests.
        sig do
          returns(
            T::Array[FinchAPI::HRIS::EmploymentRetrieveManyParams::Request]
          )
        end
        attr_accessor :requests

        # The entity IDs to specify which entities' data to access.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :entity_ids

        sig { params(entity_ids: T::Array[String]).void }
        attr_writer :entity_ids

        sig do
          params(
            requests:
              T::Array[
                FinchAPI::HRIS::EmploymentRetrieveManyParams::Request::OrHash
              ],
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The array of batch requests.
          requests:,
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              requests:
                T::Array[FinchAPI::HRIS::EmploymentRetrieveManyParams::Request],
              entity_ids: T::Array[String],
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Request < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::EmploymentRetrieveManyParams::Request,
                FinchAPI::Internal::AnyHash
              )
            end

          # A stable Finch `id` (UUID v4) for an individual in the company. There is no
          # limit to the number of `individual_id` to send per request. It is preferantial
          # to send all ids in a single request for Finch to optimize provider rate-limits.
          sig { returns(String) }
          attr_accessor :individual_id

          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(
            # A stable Finch `id` (UUID v4) for an individual in the company. There is no
            # limit to the number of `individual_id` to send per request. It is preferantial
            # to send all ids in a single request for Finch to optimize provider rate-limits.
            individual_id:
          )
          end

          sig { override.returns({ individual_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
