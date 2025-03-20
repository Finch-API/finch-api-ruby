# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # Name of the benefit as it appears in the provider and pay statements. Recommend
        #   limiting this to <30 characters due to limitations in specific providers (e.g.
        #   Justworks).
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)) }
        def frequency
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol))
        end
        def frequency=(_)
        end

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)) }
        def type
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol))
            .returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol))
        end
        def type=(_)
        end

        sig do
          params(
            description: String,
            frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol),
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(description: nil, frequency: nil, type: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                description: String,
                frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
                type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
