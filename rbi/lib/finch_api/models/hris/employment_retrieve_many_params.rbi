# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # The array of batch requests.
        sig { returns(T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request]) }
        attr_accessor :requests

        sig do
          params(
            requests: T::Array[T.any(FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request, FinchAPI::Internal::AnyHash)],
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The array of batch requests.
          requests:,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                requests: T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash; end

        class Request < FinchAPI::Internal::Type::BaseModel
          # A stable Finch `id` (UUID v4) for an individual in the company. There is no
          # limit to the number of `individual_id` to send per request. It is preferantial
          # to send all ids in a single request for Finch to optimize provider rate-limits.
          sig { returns(String) }
          attr_accessor :individual_id

          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(
            # A stable Finch `id` (UUID v4) for an individual in the company. There is no
            # limit to the number of `individual_id` to send per request. It is preferantial
            # to send all ids in a single request for Finch to optimize provider rate-limits.
            individual_id:
          ); end
          sig { override.returns({individual_id: String}) }
          def to_hash; end
        end
      end
    end
  end
end
