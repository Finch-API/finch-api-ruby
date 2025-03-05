# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentRetrieveManyParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request]) }
        def requests
        end

        sig do
          params(_: T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request])
            .returns(T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request])
        end
        def requests=(_)
        end

        sig do
          params(
            requests: T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(requests:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                requests: T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Request < FinchAPI::BaseModel
          sig { returns(String) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { params(individual_id: String).void }
          def initialize(individual_id:)
          end

          sig { override.returns({individual_id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
