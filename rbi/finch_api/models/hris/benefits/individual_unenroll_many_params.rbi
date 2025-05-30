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

          # Array of individual_ids to unenroll.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :individual_ids

          sig { params(individual_ids: T::Array[String]).void }
          attr_writer :individual_ids

          sig do
            params(
              individual_ids: T::Array[String],
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of individual_ids to unenroll.
            individual_ids: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
