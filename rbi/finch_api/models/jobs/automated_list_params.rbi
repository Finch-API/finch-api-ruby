# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Jobs::AutomatedListParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # Number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Index to start from (defaults to 0)
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of items to return
          limit: nil,
          # Index to start from (defaults to 0)
          offset: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              offset: Integer,
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
