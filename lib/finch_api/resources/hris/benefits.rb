# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        # @return [FinchAPI::Resources::HRIS::Benefits::Individuals]
        attr_reader :individuals

        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::HRIS::BenefitCreateParams} for more details.
        #
        # Creates a new company-wide deduction or contribution. Please use the
        # `/providers` endpoint to view available types for each provider.
        #
        # @overload create(company_contribution: nil, description: nil, frequency: nil, type: nil, request_options: {})
        #
        # @param company_contribution [FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution, nil] The company match for this benefit.
        #
        # @param description [String] Name of the benefit as it appears in the provider and pay statements. Recommend
        # ...
        #
        # @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil] The frequency of the benefit deduction/contribution.
        #
        # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Type of benefit.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::CreateCompanyBenefitsResponse]
        #
        # @see FinchAPI::Models::HRIS::BenefitCreateParams
        def create(params = {})
          parsed, options = FinchAPI::Models::HRIS::BenefitCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/benefits",
            body: parsed,
            model: FinchAPI::Models::HRIS::CreateCompanyBenefitsResponse,
            options: options
          )
        end

        # Lists deductions and contributions information for a given item
        #
        # @overload retrieve(benefit_id, request_options: {})
        #
        # @param benefit_id [String]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::CompanyBenefit]
        #
        # @see FinchAPI::Models::HRIS::BenefitRetrieveParams
        def retrieve(benefit_id, params = {})
          @client.request(
            method: :get,
            path: ["employer/benefits/%1$s", benefit_id],
            model: FinchAPI::Models::HRIS::CompanyBenefit,
            options: params[:request_options]
          )
        end

        # Updates an existing company-wide deduction or contribution
        #
        # @overload update(benefit_id, description: nil, request_options: {})
        #
        # @param benefit_id [String]
        #
        # @param description [String] Updated name or description.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse]
        #
        # @see FinchAPI::Models::HRIS::BenefitUpdateParams
        def update(benefit_id, params = {})
          parsed, options = FinchAPI::Models::HRIS::BenefitUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["employer/benefits/%1$s", benefit_id],
            body: parsed,
            model: FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse,
            options: options
          )
        end

        # List all company-wide deductions and contributions.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::HRIS::CompanyBenefit>]
        #
        # @see FinchAPI::Models::HRIS::BenefitListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "employer/benefits",
            page: FinchAPI::Internal::SinglePage,
            model: FinchAPI::Models::HRIS::CompanyBenefit,
            options: params[:request_options]
          )
        end

        # Get deductions metadata
        #
        # @overload list_supported_benefits(request_options: {})
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse>]
        #
        # @see FinchAPI::Models::HRIS::BenefitListSupportedBenefitsParams
        def list_supported_benefits(params = {})
          @client.request(
            method: :get,
            path: "employer/benefits/meta",
            page: FinchAPI::Internal::SinglePage,
            model: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
          @individuals = FinchAPI::Resources::HRIS::Benefits::Individuals.new(client: client)
        end
      end
    end
  end
end
