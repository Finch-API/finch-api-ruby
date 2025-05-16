# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitUpdateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitUpdateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # Updated name or description.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            description: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Updated name or description.
          description: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { description: String, request_options: FinchAPI::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
