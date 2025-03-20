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
      sig { returns(T.nilable(FinchAPI::Models::Income::Unit::OrSymbol)) }
      def unit
      end

      sig do
        params(_: T.nilable(FinchAPI::Models::Income::Unit::OrSymbol))
          .returns(T.nilable(FinchAPI::Models::Income::Unit::OrSymbol))
      end
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
          unit: T.nilable(FinchAPI::Models::Income::Unit::OrSymbol)
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
              unit: T.nilable(FinchAPI::Models::Income::Unit::OrSymbol)
            }
          )
      end
      def to_hash
      end

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #   `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      module Unit
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Income::Unit) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::Income::Unit::TaggedSymbol) }

        YEARLY = T.let(:yearly, FinchAPI::Models::Income::Unit::OrSymbol)
        QUARTERLY = T.let(:quarterly, FinchAPI::Models::Income::Unit::OrSymbol)
        MONTHLY = T.let(:monthly, FinchAPI::Models::Income::Unit::OrSymbol)
        SEMI_MONTHLY = T.let(:semi_monthly, FinchAPI::Models::Income::Unit::OrSymbol)
        BI_WEEKLY = T.let(:bi_weekly, FinchAPI::Models::Income::Unit::OrSymbol)
        WEEKLY = T.let(:weekly, FinchAPI::Models::Income::Unit::OrSymbol)
        DAILY = T.let(:daily, FinchAPI::Models::Income::Unit::OrSymbol)
        HOURLY = T.let(:hourly, FinchAPI::Models::Income::Unit::OrSymbol)
        FIXED = T.let(:fixed, FinchAPI::Models::Income::Unit::OrSymbol)
      end
    end
  end
end
