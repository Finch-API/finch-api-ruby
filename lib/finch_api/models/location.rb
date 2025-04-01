# frozen_string_literal: true

module FinchAPI
  module Models
    class Location < FinchAPI::BaseModel
      # @!attribute city
      #   City, district, suburb, town, or village.
      #
      #   @return [String, nil]
      optional :city, String, nil?: true

      # @!attribute country
      #   The 2-letter ISO 3166 country code.
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute line1
      #   Street address or PO box.
      #
      #   @return [String, nil]
      optional :line1, String, nil?: true

      # @!attribute line2
      #   Apartment, suite, unit, or building.
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute postal_code
      #   The postal code or zip code.
      #
      #   @return [String, nil]
      optional :postal_code, String, nil?: true

      # @!attribute source_id
      #
      #   @return [String, nil]
      optional :source_id, String, nil?: true

      # @!attribute state
      #   The state code.
      #
      #   @return [String, nil]
      optional :state, String, nil?: true

      # @!parse
      #   # @param city [String, nil]
      #   # @param country [String, nil]
      #   # @param line1 [String, nil]
      #   # @param line2 [String, nil]
      #   # @param name [String, nil]
      #   # @param postal_code [String, nil]
      #   # @param source_id [String, nil]
      #   # @param state [String, nil]
      #   #
      #   def initialize(
      #     city: nil,
      #     country: nil,
      #     line1: nil,
      #     line2: nil,
      #     name: nil,
      #     postal_code: nil,
      #     source_id: nil,
      #     state: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | FinchAPI::BaseModel) -> void
    end
  end
end
