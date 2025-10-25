# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualUnenrollManyParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Benefits::IndividualUnenrollManyParams,
                FinchAPI::Internal::AnyHash
              )
            end

          # The entity IDs to specify which entities' data to access.
          sig { returns(T::Array[String]) }
          attr_accessor :entity_ids

          # Array of individual_ids to unenroll.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :individual_ids

          sig { params(individual_ids: T::Array[String]).void }
          attr_writer :individual_ids

          sig do
            params(
              entity_ids: T::Array[String],
              individual_ids: T::Array[String],
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The entity IDs to specify which entities' data to access.
            entity_ids:,
            # Array of individual_ids to unenroll.
            individual_ids: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                entity_ids: T::Array[String],
                individual_ids: T::Array[String],
                request_options: FinchAPI::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
