# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualRetrieveManyBenefitsParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # comma-delimited list of stable Finch uuids for each individual. If empty,
          #   defaults to all individuals
          sig { returns(T.nilable(String)) }
          attr_reader :individual_ids

          sig { params(individual_ids: String).void }
          attr_writer :individual_ids

          sig do
            params(
              individual_ids: String,
              request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(individual_ids: nil, request_options: {}); end

          sig { override.returns({individual_ids: String, request_options: FinchAPI::RequestOptions}) }
          def to_hash; end
        end
      end
    end
  end
end
