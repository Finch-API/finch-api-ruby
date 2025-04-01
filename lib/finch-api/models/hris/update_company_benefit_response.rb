# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#update
      class UpdateCompanyBenefitResponse < FinchAPI::BaseModel
        # @!attribute benefit_id
        #
        #   @return [String]
        required :benefit_id, String

        # @!parse
        #   # @param benefit_id [String]
        #   #
        #   def initialize(benefit_id:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
