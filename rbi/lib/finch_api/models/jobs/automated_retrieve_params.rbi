# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedRetrieveParams < FinchAPI::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        sig do
          params(request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash))
            .returns(T.attached_class)
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
