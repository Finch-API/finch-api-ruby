# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#create
      class BenefitCreateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute [r] description
        #   Name of the benefit as it appears in the provider and pay statements. Recommend
        #     limiting this to <30 characters due to limitations in specific providers (e.g.
        #     Justworks).
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute frequency
        #   The frequency of the benefit deduction/contribution.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil]
        optional :frequency, enum: -> { FinchAPI::Models::HRIS::BenefitFrequency }, nil?: true

        # @!attribute type
        #   Type of benefit.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

        # @!parse
        #   # @param description [String]
        #   # @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(description: nil, frequency: nil, type: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
