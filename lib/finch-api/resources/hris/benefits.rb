# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        # @return [FinchAPI::Resources::HRIS::Benefits::Individuals]
        attr_reader :individuals

        # Creates a new company-wide deduction or contribution. Please use the
        #   `/providers` endpoint to view available types for each provider.
        #
        # @param params [FinchAPI::Models::HRIS::BenefitCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :description Name of the benefit as it appears in the provider and pay statements. Recommend
        #     limiting this to <30 characters due to limitations in specific providers (e.g.
        #     Justworks).
        #
        #   @option params [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil] :frequency
        #
        #   @option params [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] :type Type of benefit.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::HRIS::CreateCompanyBenefitsResponse]
        #
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
        # @param benefit_id [String]
        #
        # @param params [FinchAPI::Models::HRIS::BenefitRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::HRIS::CompanyBenefit]
        #
        def retrieve(benefit_id, params = {})
          @client.request(
            method: :get,
            path: ["employer/benefits/%0s", benefit_id],
            model: FinchAPI::Models::HRIS::CompanyBenefit,
            options: params[:request_options]
          )
        end

        # Updates an existing company-wide deduction or contribution
        #
        # @param benefit_id [String]
        #
        # @param params [FinchAPI::Models::HRIS::BenefitUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :description Updated name or description.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse]
        #
        def update(benefit_id, params = {})
          parsed, options = FinchAPI::Models::HRIS::BenefitUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["employer/benefits/%0s", benefit_id],
            body: parsed,
            model: FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse,
            options: options
          )
        end

        # List all company-wide deductions and contributions.
        #
        # @param params [FinchAPI::Models::HRIS::BenefitListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::CompanyBenefit>]
        #
        def list(params = {})
          @client.request(
            method: :get,
            path: "employer/benefits",
            page: FinchAPI::SinglePage,
            model: FinchAPI::Models::HRIS::CompanyBenefit,
            options: params[:request_options]
          )
        end

        # Get deductions metadata
        #
        # @param params [FinchAPI::Models::HRIS::BenefitListSupportedBenefitsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::SupportedBenefit>]
        #
        def list_supported_benefits(params = {})
          @client.request(
            method: :get,
            path: "employer/benefits/meta",
            page: FinchAPI::SinglePage,
            model: FinchAPI::Models::HRIS::SupportedBenefit,
            options: params[:request_options]
          )
        end

        # @param client [FinchAPI::Client]
        #
        def initialize(client:)
          @client = client
          @individuals = FinchAPI::Resources::HRIS::Benefits::Individuals.new(client: client)
        end
      end
    end
  end
end
