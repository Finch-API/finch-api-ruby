# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualUnenrollManyParams < FinchAPI::BaseModel
          extend FinchAPI::Type::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # Array of individual_ids to unenroll.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :individual_ids

          sig { params(individual_ids: T::Array[String]).void }
          attr_writer :individual_ids

          sig do
            params(
              individual_ids: T::Array[String],
              request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(individual_ids: nil, request_options: {})
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
