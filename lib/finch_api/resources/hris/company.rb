# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Company
        # Read basic company data
        #
        # @overload retrieve(request_options: {})
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::HRISCompany]
        #
        # @see FinchAPI::Models::HRIS::CompanyRetrieveParams
        def retrieve(params = {})
          @client.request(
            method: :get,
            path: "employer/company",
            model: FinchAPI::Models::HRIS::HRISCompany,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
