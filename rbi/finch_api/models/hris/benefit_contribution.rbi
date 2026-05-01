# typed: strong

module FinchAPI
  module Models
    module HRIS
      module BenefitContribution
        extend FinchAPI::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed,
              FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent,
              FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered
            )
          end

        class BenefitContributionFixed < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed,
                FinchAPI::Internal::AnyHash
              )
            end

          # Contribution amount in cents.
          sig { returns(Integer) }
          attr_accessor :amount

          # Fixed contribution type.
          sig do
            returns(
              FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Integer,
              type:
                FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Contribution amount in cents.
            amount:,
            # Fixed contribution type.
            type:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                type:
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Fixed contribution type.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIXED =
              T.let(
                :fixed,
                FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionFixed::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BenefitContributionPercent < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent,
                FinchAPI::Internal::AnyHash
              )
            end

          # Contribution amount in basis points (1/100th of a percent).
          sig { returns(Integer) }
          attr_accessor :amount

          # Percentage contribution type.
          sig do
            returns(
              FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Integer,
              type:
                FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Contribution amount in basis points (1/100th of a percent).
            amount:,
            # Percentage contribution type.
            type:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                type:
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Percentage contribution type.
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERCENT =
              T.let(
                :percent,
                FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionPercent::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BenefitContributionTiered < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered,
                FinchAPI::Internal::AnyHash
              )
            end

          # Array of tier objects defining employer match tiers based on employee
          # contribution thresholds.
          sig do
            returns(
              T::Array[
                FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Tiered contribution type (only valid for company_contribution).
          sig do
            returns(
              FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              tiers:
                T::Array[
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Tier::OrHash
                ],
              type:
                FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of tier objects defining employer match tiers based on employee
            # contribution thresholds.
            tiers:,
            # Tiered contribution type (only valid for company_contribution).
            type:
          )
          end

          sig do
            override.returns(
              {
                tiers:
                  T::Array[
                    FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Tier
                  ],
                type:
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Tier < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Tier,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :match

            sig { returns(Integer) }
            attr_accessor :threshold

            sig do
              params(match: Integer, threshold: Integer).returns(
                T.attached_class
              )
            end
            def self.new(match:, threshold:)
            end

            sig { override.returns({ match: Integer, threshold: Integer }) }
            def to_hash
            end
          end

          # Tiered contribution type (only valid for company_contribution).
          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TIERED =
              T.let(
                :tiered,
                FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::BenefitContribution::BenefitContributionTiered::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[FinchAPI::HRIS::BenefitContribution::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
