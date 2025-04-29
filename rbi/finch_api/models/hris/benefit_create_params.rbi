# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # The company match for this benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution)) }
        attr_reader :company_contribution

        sig do
          params(
            company_contribution: T.nilable(
              T.any(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution, FinchAPI::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :company_contribution

        # Name of the benefit as it appears in the provider and pay statements. Recommend
        # limiting this to <30 characters due to limitations in specific providers (e.g.
        # Justworks).
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The frequency of the benefit deduction/contribution.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)) }
        attr_accessor :frequency

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)) }
        attr_accessor :type

        sig do
          params(
            company_contribution: T.nilable(
              T.any(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution, FinchAPI::Internal::AnyHash)
            ),
            description: String,
            frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The company match for this benefit.
          company_contribution: nil,
          # Name of the benefit as it appears in the provider and pay statements. Recommend
          # limiting this to <30 characters due to limitations in specific providers (e.g.
          # Justworks).
          description: nil,
          # The frequency of the benefit deduction/contribution.
          frequency: nil,
          # Type of benefit.
          type: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                company_contribution: T.nilable(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution),
                description: String,
                frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash; end

        class CompanyContribution < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Tier])) }
          attr_reader :tiers

          sig do
            params(
              tiers: T::Array[T.any(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Tier, FinchAPI::Internal::AnyHash)]
            )
              .void
          end
          attr_writer :tiers

          sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol)) }
          attr_reader :type

          sig { params(type: FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol).void }
          attr_writer :type

          # The company match for this benefit.
          sig do
            params(
              tiers: T::Array[T.any(FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Tier, FinchAPI::Internal::AnyHash)],
              type: FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(tiers: nil, type: nil); end

          sig do
            override
              .returns(
                {
                  tiers: T::Array[FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Tier],
                  type: FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol
                }
              )
          end
          def to_hash; end

          class Tier < FinchAPI::Internal::Type::BaseModel
            sig { returns(T.nilable(Integer)) }
            attr_reader :match

            sig { params(match: Integer).void }
            attr_writer :match

            sig { returns(T.nilable(Integer)) }
            attr_reader :threshold

            sig { params(threshold: Integer).void }
            attr_writer :threshold

            sig { params(match: Integer, threshold: Integer).returns(T.attached_class) }
            def self.new(match: nil, threshold: nil); end

            sig { override.returns({match: Integer, threshold: Integer}) }
            def to_hash; end
          end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MATCH =
              T.let(:match, FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type::TaggedSymbol)

            sig do
              override
                .returns(T::Array[FinchAPI::Models::HRIS::BenefitCreateParams::CompanyContribution::Type::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
