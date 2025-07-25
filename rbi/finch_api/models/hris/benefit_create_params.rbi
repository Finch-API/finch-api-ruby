# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitCreateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The company match for this benefit.
        sig do
          returns(
            T.nilable(FinchAPI::HRIS::BenefitCreateParams::CompanyContribution)
          )
        end
        attr_reader :company_contribution

        sig do
          params(
            company_contribution:
              T.nilable(
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::OrHash
              )
          ).void
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
        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol)) }
        attr_accessor :frequency

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol)) }
        attr_accessor :type

        sig do
          params(
            company_contribution:
              T.nilable(
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::OrHash
              ),
            description: String,
            frequency: T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              company_contribution:
                T.nilable(
                  FinchAPI::HRIS::BenefitCreateParams::CompanyContribution
                ),
              description: String,
              frequency: T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol),
              type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class CompanyContribution < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier
              ]
            )
          end
          attr_accessor :tiers

          sig do
            returns(
              FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol
            )
          end
          attr_accessor :type

          # The company match for this benefit.
          sig do
            params(
              tiers:
                T::Array[
                  FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier::OrHash
                ],
              type:
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(tiers:, type:)
          end

          sig do
            override.returns(
              {
                tiers:
                  T::Array[
                    FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier
                  ],
                type:
                  FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Tier < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier,
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
                  FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MATCH =
              T.let(
                :match,
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type::TaggedSymbol
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
