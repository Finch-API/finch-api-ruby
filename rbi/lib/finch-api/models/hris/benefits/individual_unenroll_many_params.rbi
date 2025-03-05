# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualUnenrollManyParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(T.nilable(T::Array[String])) }
          def individual_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def individual_ids=(_)
          end

          sig do
            params(
              individual_ids: T::Array[String],
              request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(individual_ids: nil, request_options: {})
          end

          sig do
            override.returns({individual_ids: T::Array[String], request_options: FinchAPI::RequestOptions})
          end
          def to_hash
          end
        end
      end
    end
  end
end
