# typed: strong

module FinchAPI
  module Models
    class ProviderListParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(FinchAPI::ProviderListParams, FinchAPI::Internal::AnyHash)
        end

      sig do
        params(request_options: FinchAPI::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: FinchAPI::RequestOptions }) }
      def to_hash
      end
    end
  end
end
