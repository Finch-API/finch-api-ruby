# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :pay_frequencies

        sig { params(pay_frequencies: T::Array[String]).void }
        attr_writer :pay_frequencies

        sig do
          params(
            individual_id: String,
            pay_frequencies: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          individual_id: nil,
          pay_frequencies: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              individual_id: String,
              pay_frequencies: T::Array[String],
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
