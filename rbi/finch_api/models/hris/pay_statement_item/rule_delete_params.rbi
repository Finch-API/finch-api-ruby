# typed: strong

module FinchAPI
  module Models
    module HRIS
      module PayStatementItem
        class RuleDeleteParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatementItem::RuleDeleteParams,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :rule_id

          # The entity IDs to delete the rule for.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :entity_ids

          sig { params(entity_ids: T::Array[String]).void }
          attr_writer :entity_ids

          sig do
            params(
              rule_id: String,
              entity_ids: T::Array[String],
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            rule_id:,
            # The entity IDs to delete the rule for.
            entity_ids: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                rule_id: String,
                entity_ids: T::Array[String],
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
end
