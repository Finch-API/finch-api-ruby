# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CompanyBenefit < FinchAPI::BaseModel
        sig { returns(String) }
        def benefit_id
        end

        sig { params(_: String).returns(String) }
        def benefit_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def frequency
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def frequency=(_)
        end

        # Type of benefit.
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def type=(_)
        end

        sig do
          params(
            benefit_id: String,
            description: T.nilable(String),
            frequency: T.nilable(Symbol),
            type: T.nilable(Symbol)
          )
            .returns(T.attached_class)
        end
        def self.new(benefit_id:, description:, frequency:, type:)
        end

        sig do
          override
            .returns(
              {
                benefit_id: String,
                description: T.nilable(String),
                frequency: T.nilable(Symbol),
                type: T.nilable(Symbol)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
