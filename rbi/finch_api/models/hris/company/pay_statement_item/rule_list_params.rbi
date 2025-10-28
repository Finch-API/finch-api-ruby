# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          class RuleListParams < FinchAPI::Internal::Type::BaseModel
            extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::Company::PayStatementItem::RuleListParams,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The entity IDs to retrieve rules for.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :entity_ids

            sig { params(entity_ids: T::Array[String]).void }
            attr_writer :entity_ids

            sig do
              params(
                entity_ids: T::Array[String],
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The entity IDs to retrieve rules for.
              entity_ids: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
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
end
