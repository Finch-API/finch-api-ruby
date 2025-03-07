# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupListParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def pay_frequencies
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def pay_frequencies=(_)
        end

        sig do
          params(
            individual_id: String,
            pay_frequencies: T::Array[String],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(individual_id: nil, pay_frequencies: nil, request_options: {})
        end

        sig do
          override
            .returns(
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
