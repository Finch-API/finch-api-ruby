# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualRetrieveManyParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options)) }
        def options
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options))
            .returns(T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options))
        end
        def options=(_)
        end

        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request])) }
        def requests
        end

        sig do
          params(_: T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request])
            .returns(T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request])
        end
        def requests=(_)
        end

        sig do
          params(
            options: T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options),
            requests: T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(options: nil, requests: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                options: T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options),
                requests: T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Options < FinchAPI::BaseModel
          sig { returns(T.nilable(T::Array[String])) }
          def include
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def include=(_)
          end

          sig { params(include: T::Array[String]).void }
          def initialize(include: nil)
          end

          sig { override.returns({include: T::Array[String]}) }
          def to_hash
          end
        end

        class Request < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { params(individual_id: String).void }
          def initialize(individual_id: nil)
          end

          sig { override.returns({individual_id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
