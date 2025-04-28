# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CompanyBenefit < FinchAPI::Internal::Type::BaseModel
        # The id of the benefit.
        sig { returns(String) }
        attr_accessor :benefit_id

        # The company match for this benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution)) }
        attr_reader :company_contribution

        sig do
          params(
            company_contribution: T.nilable(T.any(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution, FinchAPI::Internal::AnyHash))
          )
            .void
        end
        attr_writer :company_contribution

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
            company_contribution: T.nilable(T.any(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution, FinchAPI::Internal::AnyHash)),
            description: T.nilable(String),
            frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The id of the benefit.
          benefit_id:,
          # The company match for this benefit.
          company_contribution:,
          description:,
          # The frequency of the benefit deduction/contribution.
          frequency:,
          # Type of benefit.
          type:
        ); end
        sig do
          override
            .returns(
              {
                benefit_id: String,
                company_contribution: T.nilable(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution),
                description: T.nilable(String),
                frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
              }
            )
        end
        def to_hash; end

        class CompanyContribution < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Tier])) }
          attr_reader :tiers

          sig do
            params(
              tiers: T::Array[T.any(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Tier, FinchAPI::Internal::AnyHash)]
            )
              .void
          end
          attr_writer :tiers

          sig { returns(T.nilable(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol)) }
          attr_reader :type

          sig { params(type: FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type::OrSymbol).void }
          attr_writer :type

          # The company match for this benefit.
          sig do
            params(
              tiers: T::Array[T.any(FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Tier, FinchAPI::Internal::AnyHash)],
              type: FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(tiers: nil, type: nil); end

          sig do
            override
              .returns(
                {
                  tiers: T::Array[FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Tier],
                  type: FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol
                }
              )
          end
          def to_hash; end

          class Tier < FinchAPI::Internal::Type::BaseModel
            sig { returns(T.nilable(Float)) }
            attr_reader :match

            sig { params(match: Float).void }
            attr_writer :match

            sig { returns(T.nilable(Float)) }
            attr_reader :threshold

            sig { params(threshold: Float).void }
            attr_writer :threshold

            sig { params(match: Float, threshold: Float).returns(T.attached_class) }
            def self.new(match: nil, threshold: nil); end

            sig { override.returns({match: Float, threshold: Float}) }
            def to_hash; end
          end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MATCH = T.let(:match, FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol)

            sig do
              override.returns(T::Array[FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
