# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        # @see FinchAPI::Resources::Sandbox::Connections::Accounts#update
        class AccountUpdateParams < FinchAPI::Internal::Type::BaseModel
          # @!parse
          #   extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute [r] connection_status
          #
          #   @return [Symbol, FinchAPI::Models::ConnectionStatusType, nil]
          optional :connection_status, enum: -> { FinchAPI::Models::ConnectionStatusType }

          # @!parse
          #   # @return [Symbol, FinchAPI::Models::ConnectionStatusType]
          #   attr_writer :connection_status

          # @!parse
          #   # @param connection_status [Symbol, FinchAPI::Models::ConnectionStatusType]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(connection_status: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
