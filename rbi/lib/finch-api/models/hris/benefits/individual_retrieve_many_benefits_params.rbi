# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualRetrieveManyBenefitsParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(T.nilable(String)) }
          def individual_ids
          end

          sig { params(_: String).returns(String) }
          def individual_ids=(_)
          end

          sig do
            params(
              individual_ids: String,
              request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(individual_ids: nil, request_options: {})
          end

          sig { override.returns({individual_ids: String, request_options: FinchAPI::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
