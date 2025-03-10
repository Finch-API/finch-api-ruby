# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        sig do
          params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(FinchAPI::Models::HRIS::HRISCompany)
        end
        def retrieve(request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
