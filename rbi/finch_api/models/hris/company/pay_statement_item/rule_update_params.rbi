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
              T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

            sig { returns(T.nilable(T.anything)) }
            attr_reader :optional_property

            sig { params(optional_property: T.anything).void }
            attr_writer :optional_property

            sig do
              params(
                optional_property: T.anything,
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(optional_property: nil, request_options: {})
            end

            sig do
              override.returns(
                {
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
