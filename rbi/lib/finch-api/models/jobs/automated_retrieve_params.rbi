# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedRetrieveParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig do
          params(request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
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
