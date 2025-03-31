# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitCreateParams < FinchAPI::BaseModel
        extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # Name of the benefit as it appears in the provider and pay statements. Recommend
        #   limiting this to <30 characters due to limitations in specific providers (e.g.
        #   Justworks).
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol)) }
        attr_accessor :frequency

        # Type of benefit.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol)) }
        attr_accessor :type

        sig do
          params(
            description: String,
            frequency: T.nilable(FinchAPI::Models::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitType::OrSymbol),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
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
