# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::AccessTokens#create
    class AccessTokenCreateParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute client_id
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute redirect_uri
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!method initialize(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {})
      #   @param code [String]
      #   @param client_id [String]
      #   @param client_secret [String]
      #   @param redirect_uri [String]
      #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
