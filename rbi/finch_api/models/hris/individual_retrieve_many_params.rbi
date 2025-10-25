# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::IndividualRetrieveManyParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity IDs to specify which entities' data to access.
        sig { returns(T::Array[String]) }
        attr_accessor :entity_ids

        sig do
          returns(
            T.nilable(FinchAPI::HRIS::IndividualRetrieveManyParams::Options)
          )
        end
        attr_reader :options

        sig do
          params(
            options:
              T.nilable(
                FinchAPI::HRIS::IndividualRetrieveManyParams::Options::OrHash
              )
          ).void
        end
        attr_writer :options

        sig do
          returns(
            T.nilable(
              T::Array[FinchAPI::HRIS::IndividualRetrieveManyParams::Request]
            )
          )
        end
        attr_reader :requests

        sig do
          params(
            requests:
              T::Array[
                FinchAPI::HRIS::IndividualRetrieveManyParams::Request::OrHash
              ]
          ).void
        end
        attr_writer :requests

        sig do
          params(
            entity_ids: T::Array[String],
            options:
              T.nilable(
                FinchAPI::HRIS::IndividualRetrieveManyParams::Options::OrHash
              ),
            requests:
              T::Array[
                FinchAPI::HRIS::IndividualRetrieveManyParams::Request::OrHash
              ],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity IDs to specify which entities' data to access.
          entity_ids:,
          options: nil,
          requests: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              entity_ids: T::Array[String],
              options:
                T.nilable(
                  FinchAPI::HRIS::IndividualRetrieveManyParams::Options
                ),
              requests:
                T::Array[FinchAPI::HRIS::IndividualRetrieveManyParams::Request],
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Options < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::IndividualRetrieveManyParams::Options,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :include

          sig { params(include: T::Array[String]).void }
          attr_writer :include

          sig { params(include: T::Array[String]).returns(T.attached_class) }
          def self.new(include: nil)
          end

          sig { override.returns({ include: T::Array[String] }) }
          def to_hash
          end
        end

        class Request < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::IndividualRetrieveManyParams::Request,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(individual_id: nil)
          end

          sig { override.returns({ individual_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
