# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        sig { returns(FinchAPI::Resources::HRIS::Benefits::Individuals) }
        def individuals
        end

        sig do
          params(
            description: String,
            frequency: T.nilable(Symbol),
            type: T.nilable(Symbol),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::HRIS::CreateCompanyBenefitsResponse)
        end
        def create(description: nil, frequency: nil, type: nil, request_options: {})
        end

        sig do
          params(
            benefit_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::HRIS::CompanyBenefit)
        end
        def retrieve(benefit_id, request_options: {})
        end

        sig do
          params(
            benefit_id: String,
            description: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse)
        end
        def update(benefit_id, description: nil, request_options: {})
        end

        sig do
          params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(FinchAPI::SinglePage[FinchAPI::Models::HRIS::CompanyBenefit])
        end
        def list(request_options: {})
        end

        sig do
          params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(FinchAPI::SinglePage[FinchAPI::Models::HRIS::SupportedBenefit])
        end
        def list_supported_benefits(request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
