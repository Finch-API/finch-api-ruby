# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DirectoryListIndividualsParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # Number of employees to return (defaults to all)
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
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(limit: nil, offset: nil, request_options: {}); end

        sig { override.returns({limit: Integer, offset: Integer, request_options: FinchAPI::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
