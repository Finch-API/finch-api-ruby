# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        # @see FinchAPI::Resources::Sandbox::Connections::Accounts#update
        class AccountUpdateParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute connection_status
          #
          #   @return [Symbol, FinchAPI::ConnectionStatusType, nil]
          optional :connection_status, enum: -> { FinchAPI::ConnectionStatusType }

          # @!method initialize(connection_status: nil, request_options: {})
          #   @param connection_status [Symbol, FinchAPI::ConnectionStatusType]
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
