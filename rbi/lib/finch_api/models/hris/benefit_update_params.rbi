# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitUpdateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # Updated name or description.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            description: String,
            request_options: T.any(
              FinchAPI::RequestOptions,
              FinchAPI::Internal::AnyHash
            )
          )
            .returns(T.attached_class)
        end
        def self.new(description: nil, request_options: {})
        end

        sig { override.returns({description: String, request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
