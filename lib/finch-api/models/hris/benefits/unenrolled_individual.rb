# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class UnenrolledIndividual < FinchAPI::BaseModel
          # @!attribute [r] body
          #
          #   @return [FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, nil]
          optional :body, -> { FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body }

          # @!parse
          #   # @return [FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body]
          #   attr_writer :body

          # @!attribute [r] code
          #   HTTP status code
          #
          #   @return [Integer, nil]
          optional :code, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :code

          # @!attribute [r] individual_id
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!parse
          #   # @param body [FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body]
          #   # @param code [Integer]
          #   # @param individual_id [String]
          #   #
          #   def initialize(body: nil, code: nil, individual_id: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual#body
          class Body < FinchAPI::BaseModel
            # @!attribute finch_code
            #   A descriptive identifier for the response.
            #
            #   @return [String, nil]
            optional :finch_code, String, nil?: true

            # @!attribute message
            #   Short description in English that provides more information about the response.
            #
            #   @return [String, nil]
            optional :message, String, nil?: true

            # @!attribute name
            #   Identifier indicating whether the benefit was newly enrolled or updated.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!parse
            #   # @param finch_code [String, nil]
            #   # @param message [String, nil]
            #   # @param name [String, nil]
            #   #
            #   def initialize(finch_code: nil, message: nil, name: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void
          end
        end
      end
    end
  end
end
