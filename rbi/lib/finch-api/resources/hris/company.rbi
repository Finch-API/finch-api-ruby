# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        # Read basic company data
        sig do
          params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(FinchAPI::Models::HRIS::HRISCompany)
        end
        def retrieve(request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
