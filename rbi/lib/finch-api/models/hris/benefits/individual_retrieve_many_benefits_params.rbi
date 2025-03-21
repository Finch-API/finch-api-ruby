# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualRetrieveManyBenefitsParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # comma-delimited list of stable Finch uuids for each individual. If empty,
          #   defaults to all individuals
          sig { returns(T.nilable(String)) }
          def individual_ids
          end

          sig { params(_: String).returns(String) }
          def individual_ids=(_)
          end

          sig do
            params(
              individual_ids: String,
              request_options: T.any(
                FinchAPI::RequestOptions,
                FinchAPI::Util::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(individual_ids: nil, request_options: {})
          end

          sig { override.returns({individual_ids: String, request_options: FinchAPI::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
