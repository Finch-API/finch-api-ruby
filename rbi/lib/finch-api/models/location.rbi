# typed: strong

module FinchAPI
  module Models
    class Location < FinchAPI::BaseModel
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

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The postal code or zip code.
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      sig { returns(T.nilable(String)) }
      attr_accessor :source_id

      # The state code.
      sig { returns(T.nilable(String)) }
      attr_accessor :state

      sig do
        params(
          city: T.nilable(String),
          country: T.nilable(String),
          line1: T.nilable(String),
          line2: T.nilable(String),
          name: T.nilable(String),
          postal_code: T.nilable(String),
          source_id: T.nilable(String),
          state: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(city: nil, country: nil, line1: nil, line2: nil, name: nil, postal_code: nil, source_id: nil, state: nil)
      end

      sig do
        override
          .returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              postal_code: T.nilable(String),
              source_id: T.nilable(String),
              state: T.nilable(String)
            }
          )
      end
      def to_hash
      end
    end
  end
end
