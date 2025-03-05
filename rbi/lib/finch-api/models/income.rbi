# typed: strong

module FinchAPI
  module Models
    class Income < FinchAPI::BaseModel
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def effective_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def effective_date=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def unit
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def unit=(_)
      end

      sig do
        params(
          amount: T.nilable(Integer),
          currency: T.nilable(String),
          effective_date: T.nilable(String),
          unit: T.nilable(Symbol)
        )
          .void
      end
      def initialize(amount: nil, currency: nil, effective_date: nil, unit: nil)
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
