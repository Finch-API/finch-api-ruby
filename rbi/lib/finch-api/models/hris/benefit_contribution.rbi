# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitContribution < FinchAPI::BaseModel
        # Contribution amount in cents (if `fixed`) or basis points (if `percent`).
        sig { returns(T.nilable(Integer)) }
        def amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_)
        end

        # Contribution type.
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def type=(_)
        end

        sig { params(amount: T.nilable(Integer), type: T.nilable(Symbol)).returns(T.attached_class) }
        def self.new(amount: nil, type: nil)
        end

        sig { override.returns({amount: T.nilable(Integer), type: T.nilable(Symbol)}) }
        def to_hash
        end

        # Contribution type.
        class Type < FinchAPI::Enum
          abstract!

          FIXED = T.let(:fixed, T.nilable(Symbol))
          PERCENT = T.let(:percent, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
