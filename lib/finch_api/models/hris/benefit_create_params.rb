# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#create
      class BenefitCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute description
        #   Name of the benefit as it appears in the provider and pay statements. Recommend
        #   limiting this to <30 characters due to limitations in specific providers (e.g.
        #   Justworks).
        #
        #   @return [String, nil]
        optional :description, String

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

        # @!method initialize(description: nil, frequency: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::BenefitCreateParams} for more details.
        #
        #   @param description [String] Name of the benefit as it appears in the provider and pay statements. Recommend
        #   ...
        #
        #   @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil] The frequency of the benefit deduction/contribution.
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Type of benefit.
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
