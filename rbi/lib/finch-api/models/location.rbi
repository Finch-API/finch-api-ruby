# typed: strong

module FinchAPI
  module Models
    class Location < FinchAPI::BaseModel
      # City, district, suburb, town, or village.
      sig { returns(T.nilable(String)) }
      def city
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def city=(_)
      end

      # The 2-letter ISO 3166 country code.
      sig { returns(T.nilable(String)) }
      def country
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def country=(_)
      end

      # Street address or PO box.
      sig { returns(T.nilable(String)) }
      def line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def line1=(_)
      end

      # Apartment, suite, unit, or building.
      sig { returns(T.nilable(String)) }
      def line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      # The postal code or zip code.
      sig { returns(T.nilable(String)) }
      def postal_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def postal_code=(_)
      end

      sig { returns(T.nilable(String)) }
      def source_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def source_id=(_)
      end

      # The state code.
      sig { returns(T.nilable(String)) }
      def state
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def state=(_)
      end

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
