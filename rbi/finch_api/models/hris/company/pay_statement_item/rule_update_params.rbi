# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          class RuleUpdateParams < FinchAPI::Internal::Type::BaseModel
            extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::Company::PayStatementItem::RuleUpdateParams,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The entity IDs to update the rule for.
            sig { returns(T::Array[String]) }
            attr_accessor :entity_ids

            sig { returns(T.nilable(T.anything)) }
            attr_reader :optional_property

            sig { params(optional_property: T.anything).void }
            attr_writer :optional_property

            sig do
              params(
                entity_ids: T::Array[String],
                optional_property: T.anything,
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The entity IDs to update the rule for.
              entity_ids:,
              optional_property: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  entity_ids: T::Array[String],
                  optional_property: T.anything,
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
