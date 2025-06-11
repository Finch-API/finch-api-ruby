# typed: strong

module FinchAPI
  module Models
    class Income < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(FinchAPI::Income, FinchAPI::Internal::AnyHash) }

      # The income amount in cents.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # The currency code.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # The date the income amount went into effect.
      sig { returns(T.nilable(Date)) }
      attr_accessor :effective_date

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      # `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      sig { returns(T.nilable(FinchAPI::Income::Unit::OrSymbol)) }
      attr_accessor :unit

      # The employee's income as reported by the provider. This may not always be
      # annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
      # depending on what information the provider returns.
      sig do
        params(
          amount: T.nilable(Integer),
          currency: T.nilable(String),
          effective_date: T.nilable(Date),
          unit: T.nilable(FinchAPI::Income::Unit::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The income amount in cents.
        amount:,
        # The currency code.
        currency:,
        # The date the income amount went into effect.
        effective_date:,
        # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
        # `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
        unit:
      )
      end

      sig do
        override.returns(
          {
            amount: T.nilable(Integer),
            currency: T.nilable(String),
            effective_date: T.nilable(Date),
            unit: T.nilable(FinchAPI::Income::Unit::OrSymbol)
          }
        )
      end
      def to_hash
      end

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      # `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      module Unit
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Income::Unit) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YEARLY = T.let(:yearly, FinchAPI::Income::Unit::TaggedSymbol)
        QUARTERLY = T.let(:quarterly, FinchAPI::Income::Unit::TaggedSymbol)
        MONTHLY = T.let(:monthly, FinchAPI::Income::Unit::TaggedSymbol)
        SEMI_MONTHLY =
          T.let(:semi_monthly, FinchAPI::Income::Unit::TaggedSymbol)
        BI_WEEKLY = T.let(:bi_weekly, FinchAPI::Income::Unit::TaggedSymbol)
        WEEKLY = T.let(:weekly, FinchAPI::Income::Unit::TaggedSymbol)
        DAILY = T.let(:daily, FinchAPI::Income::Unit::TaggedSymbol)
        HOURLY = T.let(:hourly, FinchAPI::Income::Unit::TaggedSymbol)
        FIXED = T.let(:fixed, FinchAPI::Income::Unit::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Income::Unit::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
