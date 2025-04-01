# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::AccessTokens#create
    class AccessTokenCreateParams < FinchAPI::BaseModel
      # @!parse
      #   extend FinchAPI::Type::RequestParameters::Converter
      include FinchAPI::RequestParameters

      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute [r] client_id
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_id

      # @!attribute [r] client_secret
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_secret

      # @!attribute [r] redirect_uri
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!parse
      #   # @return [String]
      #   attr_writer :redirect_uri

      # @!parse
      #   # @param code [String]
      #   # @param client_id [String]
      #   # @param client_secret [String]
      #   # @param redirect_uri [String]
      #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {}, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void
    end
  end
end
