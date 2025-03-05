# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Company
        # Read basic company data
        #
        # @param params [FinchAPI::Models::HRIS::CompanyRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::HRIS::HRISCompany]
        #
        def retrieve(params = {})
          @client.request(
            method: :get,
            path: "employer/company",
            model: FinchAPI::Models::HRIS::HRISCompany,
            options: params[:request_options]
          )
        end

        # @param client [FinchAPI::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
