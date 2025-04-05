# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Employments#retrieve_many
      class EmploymentRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute requests
        #   The array of batch requests.
        #
        #   @return [Array<FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request>]
        required :requests,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request] }

        # @!parse
        #   # @param requests [Array<FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(requests:, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        class Request < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #   A stable Finch `id` (UUID v4) for an individual in the company. There is no
          #   limit to the number of `individual_id` to send per request. It is preferantial
          #   to send all ids in a single request for Finch to optimize provider rate-limits.
          #
          #   @return [String]
          required :individual_id, String

          # @!parse
          #   # @param individual_id [String]
          #   #
          #   def initialize(individual_id:, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
