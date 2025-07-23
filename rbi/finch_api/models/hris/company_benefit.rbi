# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CompanyBenefit < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::CompanyBenefit, FinchAPI::Internal::AnyHash)
          end

        # The id of the benefit.
        sig { returns(String) }
        attr_accessor :benefit_id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The frequency of the benefit deduction/contribution.
        sig do
          returns(T.nilable(FinchAPI::HRIS::BenefitFrequency::TaggedSymbol))
        end
        attr_accessor :frequency

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol)) }
        attr_accessor :type

        # The company match for this benefit.
        sig do
          returns(
            T.nilable(FinchAPI::HRIS::CompanyBenefit::CompanyContribution)
          )
        end
        attr_reader :company_contribution

        sig do
          params(
            company_contribution:
              T.nilable(
                FinchAPI::HRIS::CompanyBenefit::CompanyContribution::OrHash
              )
          ).void
        end
        attr_writer :company_contribution

        sig do
          params(
            benefit_id: String,
            description: T.nilable(String),
            frequency: T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
            company_contribution:
              T.nilable(
                FinchAPI::HRIS::CompanyBenefit::CompanyContribution::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the benefit.
          benefit_id:,
          description:,
          # The frequency of the benefit deduction/contribution.
          frequency:,
          # Type of benefit.
          type:,
          # The company match for this benefit.
          company_contribution: nil
        )
        end

        sig do
          override.returns(
            {
              benefit_id: String,
              description: T.nilable(String),
              frequency:
                T.nilable(FinchAPI::HRIS::BenefitFrequency::TaggedSymbol),
              type: T.nilable(FinchAPI::HRIS::BenefitType::TaggedSymbol),
              company_contribution:
                T.nilable(FinchAPI::HRIS::CompanyBenefit::CompanyContribution)
            }
          )
        end
        def to_hash
        end

        class CompanyContribution < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::CompanyBenefit::CompanyContribution,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Tier
              ]
            )
          end
          attr_accessor :tiers

          sig do
            returns(
              FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # The company match for this benefit.
          sig do
            params(
              tiers:
                T::Array[
                  FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Tier::OrHash
                ],
              type:
                FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(tiers:, type:)
          end

          sig do
            override.returns(
              {
                tiers:
                  T::Array[
                    FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Tier
                  ],
                type:
                  FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Tier < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Tier,
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

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MATCH =
              T.let(
                :match,
                FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
