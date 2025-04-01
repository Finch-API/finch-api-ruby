# typed: strong

module FinchAPI
  module Models
    class Income < FinchAPI::BaseModel
      # The income amount in cents.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # The currency code.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # The date the income amount went into effect.
      sig { returns(T.nilable(String)) }
      attr_accessor :effective_date

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #   `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      sig { returns(T.nilable(FinchAPI::Models::Income::Unit::OrSymbol)) }
      attr_accessor :unit

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
        OrSymbol = T.type_alias { T.any(Symbol, String, FinchAPI::Models::Income::Unit::TaggedSymbol) }

        YEARLY = T.let(:yearly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        QUARTERLY = T.let(:quarterly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        MONTHLY = T.let(:monthly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        SEMI_MONTHLY = T.let(:semi_monthly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        BI_WEEKLY = T.let(:bi_weekly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        WEEKLY = T.let(:weekly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        DAILY = T.let(:daily, FinchAPI::Models::Income::Unit::TaggedSymbol)
        HOURLY = T.let(:hourly, FinchAPI::Models::Income::Unit::TaggedSymbol)
        FIXED = T.let(:fixed, FinchAPI::Models::Income::Unit::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::Income::Unit::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
