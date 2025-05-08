# typed: strong

module FinchAPI
  module Models
    class Location < FinchAPI::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

      # City, district, suburb, town, or village.
      sig { returns(T.nilable(String)) }
      attr_accessor :city

      # The 2-letter ISO 3166 country code.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # Street address or PO box.
      sig { returns(T.nilable(String)) }
      attr_accessor :line1

      # Apartment, suite, unit, or building.
      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      # The postal code or zip code.
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      # The state code.
      sig { returns(T.nilable(String)) }
      attr_accessor :state

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :source_id

      sig do
        params(
          city: T.nilable(String),
          country: T.nilable(String),
          line1: T.nilable(String),
          line2: T.nilable(String),
          postal_code: T.nilable(String),
          state: T.nilable(String),
          name: T.nilable(String),
          source_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # City, district, suburb, town, or village.
        city:,
        # The 2-letter ISO 3166 country code.
        country:,
        # Street address or PO box.
        line1:,
        # Apartment, suite, unit, or building.
        line2:,
        # The postal code or zip code.
        postal_code:,
        # The state code.
        state:,
        name: nil,
        source_id: nil
      )
      end

      sig do
        override.returns(
          {
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String),
            name: T.nilable(String),
            source_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
