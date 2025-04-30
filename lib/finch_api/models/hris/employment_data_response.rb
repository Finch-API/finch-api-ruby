# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Employments#retrieve_many
      class EmploymentDataResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::Models::HRIS::EmploymentData, nil]
        optional :body, -> { FinchAPI::Models::HRIS::EmploymentData }

        # @!attribute code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!attribute individual_id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!method initialize(body: nil, code: nil, individual_id: nil)
        #   @param body [FinchAPI::Models::HRIS::EmploymentData]
        #
        #   @param code [Integer]
        #
        #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company.
      end
    end
  end
end
