# typed: strong

module FinchAPI
  module Models
    class Income < FinchAPI::BaseModel
      # The income amount in cents.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      # The currency code.
      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      # The date the income amount went into effect.
      sig { returns(T.nilable(String)) }
      def effective_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def effective_date=(_)
      end

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #   `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      sig { returns(T.nilable(Symbol)) }
      def unit
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def unit=(_)
      end

      # The employee's income as reported by the provider. This may not always be
      #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
      #   depending on what information the provider returns.
      sig do
        params(
          amount: T.nilable(Integer),
          currency: T.nilable(String),
          effective_date: T.nilable(String),
          unit: T.nilable(Symbol)
        )
          .returns(T.attached_class)
      end
      def self.new(amount: nil, currency: nil, effective_date: nil, unit: nil)
      end

      sig do
        override
          .returns(
            {
              amount: T.nilable(Integer),
              currency: T.nilable(String),
              effective_date: T.nilable(String),
              unit: T.nilable(Symbol)
            }
          )
      end
      def to_hash
      end

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #   `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      class Unit < FinchAPI::Enum
        abstract!

        YEARLY = T.let(:yearly, T.nilable(Symbol))
        QUARTERLY = T.let(:quarterly, T.nilable(Symbol))
        MONTHLY = T.let(:monthly, T.nilable(Symbol))
        SEMI_MONTHLY = T.let(:semi_monthly, T.nilable(Symbol))
        BI_WEEKLY = T.let(:bi_weekly, T.nilable(Symbol))
        WEEKLY = T.let(:weekly, T.nilable(Symbol))
        DAILY = T.let(:daily, T.nilable(Symbol))
        HOURLY = T.let(:hourly, T.nilable(Symbol))
        FIXED = T.let(:fixed, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
