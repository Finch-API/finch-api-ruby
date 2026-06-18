# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitRegisterParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitRegisterParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity IDs to specify which entities' data to access.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :entity_ids

        sig { params(entity_ids: T::Array[String]).void }
        attr_writer :entity_ids

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
            entity_ids: T::Array[String],
            description: String,
            frequency: T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
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
              entity_ids: T::Array[String],
              description: String,
              frequency: T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol),
              type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
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
