# typed: strong

module FinchAPI
  module Resources
    class Providers
      sig do
        params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(FinchAPI::SinglePage[FinchAPI::Models::Provider])
      end
      def list(request_options: {})
      end

      sig { params(client: FinchAPI::Client).void }
      def initialize(client:)
      end
    end
  end
end
