# frozen_string_literal: true

module FinchAPI
  module Models
    class Location < FinchAPI::Internal::Type::BaseModel
      # @!attribute city
      #   City, district, suburb, town, or village.
      #
      #   @return [String, nil]
      required :city, String, nil?: true

      # @!attribute country
      #   The 2-letter ISO 3166 country code.
      #
      #   @return [String, nil]
      required :country, String, nil?: true

      # @!attribute line1
      #   Street address or PO box.
      #
      #   @return [String, nil]
      required :line1, String, nil?: true

      # @!attribute line2
      #   Apartment, suite, unit, or building.
      #
      #   @return [String, nil]
      required :line2, String, nil?: true

      # @!attribute postal_code
      #   The postal code or zip code.
      #
      #   @return [String, nil]
      required :postal_code, String, nil?: true

      # @!attribute state
      #   The state code.
      #
      #   @return [String, nil]
      required :state, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute source_id
      #
      #   @return [String, nil]
      optional :source_id, String, nil?: true

      # @!method initialize(city:, country:, line1:, line2:, postal_code:, state:, name: nil, source_id: nil)
      #   @param city [String, nil] City, district, suburb, town, or village.
      #
      #   @param country [String, nil] The 2-letter ISO 3166 country code.
      #
      #   @param line1 [String, nil] Street address or PO box.
      #
      #   @param line2 [String, nil] Apartment, suite, unit, or building.
      #
      #   @param postal_code [String, nil] The postal code or zip code.
      #
      #   @param state [String, nil] The state code.
      #
      #   @param name [String, nil]
      #
      #   @param source_id [String, nil]
    end
  end
end
