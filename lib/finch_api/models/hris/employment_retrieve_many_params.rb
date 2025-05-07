# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Employments#retrieve_many
      class EmploymentRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute requests
        #   The array of batch requests.
        #
        #   @return [Array<FinchAPI::HRIS::EmploymentRetrieveManyParams::Request>]
        required :requests,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::EmploymentRetrieveManyParams::Request]
                 }

        # @!method initialize(requests:, request_options: {})
        #   @param requests [Array<FinchAPI::HRIS::EmploymentRetrieveManyParams::Request>] The array of batch requests.
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Request < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #   A stable Finch `id` (UUID v4) for an individual in the company. There is no
          #   limit to the number of `individual_id` to send per request. It is preferantial
          #   to send all ids in a single request for Finch to optimize provider rate-limits.
          #
          #   @return [String]
          required :individual_id, String

          # @!method initialize(individual_id:)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::HRIS::EmploymentRetrieveManyParams::Request} for more details.
          #
          #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company. There is no limi
        end
      end
    end
  end
end
