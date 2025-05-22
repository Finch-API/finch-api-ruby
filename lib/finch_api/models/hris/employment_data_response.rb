# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Employments#retrieve_many
      class EmploymentDataResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::Models::HRIS::EmploymentData::UnionMember0, FinchAPI::Models::HRIS::EmploymentData::BatchError]
        required :body, union: -> { FinchAPI::HRIS::EmploymentData }

        # @!attribute code
        #
        #   @return [Integer]
        required :code, Integer

        # @!attribute individual_id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String]
        required :individual_id, String

        # @!method initialize(body:, code:, individual_id:)
        #   @param body [FinchAPI::Models::HRIS::EmploymentData::UnionMember0, FinchAPI::Models::HRIS::EmploymentData::BatchError]
        #
        #   @param code [Integer]
        #
        #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company.
      end
    end
  end
end
