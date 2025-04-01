# frozen_string_literal: true

module FinchAPI
  module Resources
    class Providers
      # Return details on all available payroll and HR systems.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::SinglePage<FinchAPI::Models::Provider>]
      #
      # @see FinchAPI::Models::ProviderListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "providers",
          page: FinchAPI::SinglePage,
          model: FinchAPI::Models::Provider,
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
