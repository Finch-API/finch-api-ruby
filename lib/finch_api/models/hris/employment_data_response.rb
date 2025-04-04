# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Employments#retrieve_many
      class EmploymentDataResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] body
        #
        #   @return [FinchAPI::Models::HRIS::EmploymentData, nil]
        optional :body, -> { FinchAPI::Models::HRIS::EmploymentData }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::EmploymentData]
        #   attr_writer :body

        # @!attribute [r] code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :code

        # @!attribute [r] individual_id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :individual_id

        # @!parse
        #   # @param body [FinchAPI::Models::HRIS::EmploymentData]
        #   # @param code [Integer]
        #   # @param individual_id [String]
        #   #
        #   def initialize(body: nil, code: nil, individual_id: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end
    end
  end
end
