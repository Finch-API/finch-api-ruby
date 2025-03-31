# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitRetrieveParams < FinchAPI::BaseModel
        extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig do
          params(
            request_options: T.any(
              FinchAPI::RequestOptions,
              FinchAPI::Util::AnyHash
            )
          ).returns(T.attached_class)
        end
        def self.new(request_options: {})
        end

        sig { override.returns({request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
