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

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)) }
        def frequency
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol))
        end
        def frequency=(_)
        end

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)) }
        def type
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol))
        end
        def type=(_)
        end

        sig do
          params(
            benefit_id: String,
            description: T.nilable(String),
            frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
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
                frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
