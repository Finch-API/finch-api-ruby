# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CompanyBenefit < FinchAPI::Internal::Type::BaseModel
        # The id of the benefit.
        sig { returns(String) }
        attr_accessor :benefit_id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The frequency of the benefit deduction/contribution.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)) }
        attr_accessor :frequency

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)) }
        attr_accessor :type

        sig do
          params(
            benefit_id: String,
            description: T.nilable(String),
            frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(benefit_id:, description:, frequency:, type:); end

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
        def to_hash; end
      end
    end
  end
end
