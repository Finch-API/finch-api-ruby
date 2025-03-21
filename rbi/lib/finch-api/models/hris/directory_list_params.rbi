# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DirectoryListParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # Number of employees to return (defaults to all)
        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        # Index to start from (defaults to 0)
        sig { returns(T.nilable(Integer)) }
        def offset
        end

        sig { params(_: Integer).returns(Integer) }
        def offset=(_)
        end

        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(limit: nil, offset: nil, request_options: {})
        end

        sig { override.returns({limit: Integer, offset: Integer, request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
