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
        # @overload create(entity_ids: nil, company_contribution: nil, description: nil, frequency: nil, type: nil, request_options: {})
        #
        # @param entity_ids [Array<String>] Query param: The entity IDs to specify which entities' data to access.
        #
        # @param company_contribution [FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution, nil] Body param: The company match for this benefit.
        #
        # @param description [String] Body param: Name of the benefit as it appears in the provider and pay statements
        #
        # @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil] Body param: The frequency of the benefit deduction/contribution.
        #
        # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Body param: Type of benefit.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::CreateCompanyBenefitsResponse]
        #
        # @see FinchAPI::Models::HRIS::BenefitCreateParams
        def create(params = {})
          parsed, options = FinchAPI::HRIS::BenefitCreateParams.dump_request(params)
          query_params = [:entity_ids]
          @client.request(
            method: :post,
            path: "employer/benefits",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: FinchAPI::HRIS::CreateCompanyBenefitsResponse,
            options: options
          )
        end

        # Lists deductions and contributions information for a given item
        #
        # @overload retrieve(benefit_id, entity_ids: nil, request_options: {})
        #
        # @param benefit_id [String]
        #
        # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::CompanyBenefit]
        #
        # @see FinchAPI::Models::HRIS::BenefitRetrieveParams
        def retrieve(benefit_id, params = {})
          parsed, options = FinchAPI::HRIS::BenefitRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["employer/benefits/%1$s", benefit_id],
            query: parsed,
            model: FinchAPI::HRIS::CompanyBenefit,
            options: options
          )
        end

        # Updates an existing company-wide deduction or contribution
        #
        # @overload update(benefit_id, entity_ids: nil, description: nil, request_options: {})
        #
        # @param benefit_id [String] Path param:
        #
        # @param entity_ids [Array<String>] Query param: The entity IDs to specify which entities' data to access.
        #
        # @param description [String] Body param: Updated name or description.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse]
        #
        # @see FinchAPI::Models::HRIS::BenefitUpdateParams
        def update(benefit_id, params = {})
          parsed, options = FinchAPI::HRIS::BenefitUpdateParams.dump_request(params)
          query_params = [:entity_ids]
          @client.request(
            method: :post,
            path: ["employer/benefits/%1$s", benefit_id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: FinchAPI::HRIS::UpdateCompanyBenefitResponse,
            options: options
          )
        end

        # List all company-wide deductions and contributions.
        #
        # @overload list(entity_ids: nil, request_options: {})
        #
        # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::HRIS::CompanyBenefit>]
        #
        # @see FinchAPI::Models::HRIS::BenefitListParams
        def list(params = {})
          parsed, options = FinchAPI::HRIS::BenefitListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/benefits",
            query: parsed,
            page: FinchAPI::Internal::SinglePage,
            model: FinchAPI::HRIS::CompanyBenefit,
            options: options
          )
        end

        # Get deductions metadata
        #
        # @overload list_supported_benefits(entity_ids: nil, request_options: {})
        #
        # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::HRIS::SupportedBenefit>]
        #
        # @see FinchAPI::Models::HRIS::BenefitListSupportedBenefitsParams
        def list_supported_benefits(params = {})
          parsed, options = FinchAPI::HRIS::BenefitListSupportedBenefitsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/benefits/meta",
            query: parsed,
            page: FinchAPI::Internal::SinglePage,
            model: FinchAPI::HRIS::SupportedBenefit,
            options: options
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
