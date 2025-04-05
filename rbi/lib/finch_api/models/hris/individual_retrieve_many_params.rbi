# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        sig { returns(T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options)) }
        attr_reader :options

        sig do
          params(
            options: T.nilable(
              T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, FinchAPI::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :options

        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request])) }
        attr_reader :requests

        sig do
          params(
            requests: T::Array[T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request, FinchAPI::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :requests

        sig do
          params(
            options: T.nilable(
              T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, FinchAPI::Internal::AnyHash)
            ),
            requests: T::Array[T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request, FinchAPI::Internal::AnyHash)],
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(options: nil, requests: nil, request_options: {}); end

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
        def to_hash; end

        class Options < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :include

          sig { params(include: T::Array[String]).void }
          attr_writer :include

          sig { params(include: T::Array[String]).returns(T.attached_class) }
          def self.new(include: nil); end

          sig { override.returns({include: T::Array[String]}) }
          def to_hash; end
        end

        class Request < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(individual_id: nil); end

          sig { override.returns({individual_id: String}) }
          def to_hash; end
        end
      end
    end
  end
end
