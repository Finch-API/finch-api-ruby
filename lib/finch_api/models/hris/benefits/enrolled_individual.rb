# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#enroll_many
        class EnrolledIndividual < FinchAPI::Internal::Type::BaseModel
          # @!attribute [r] body
          #
          #   @return [FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, nil]
          optional :body, -> { FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body }

          # @!parse
          #   # @return [FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body]
          #   attr_writer :body

          # @!attribute [r] code
          #   HTTP status code. Either 201 or 200
          #
          #   @return [Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code, nil]
          optional :code, enum: -> { FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code }

          # @!parse
          #   # @return [Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code]
          #   attr_writer :code

          # @!attribute [r] individual_id
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!parse
          #   # @param body [FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body]
          #   # @param code [Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code]
          #   # @param individual_id [String]
          #   #
          #   def initialize(body: nil, code: nil, individual_id: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::HRIS::Benefits::EnrolledIndividual#body
          class Body < FinchAPI::Internal::Type::BaseModel
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

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
          end

          # HTTP status code. Either 201 or 200
          #
          # @see FinchAPI::Models::HRIS::Benefits::EnrolledIndividual#code
          module Code
            extend FinchAPI::Internal::Type::Enum

            OK = 200
            CREATED = 201
            NOT_FOUND = 404
            FORBIDDEN = 403

            finalize!

            # @!parse
            #   # @return [Array<Integer>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
