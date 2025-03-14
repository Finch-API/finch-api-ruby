# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Directory
        # Read company directory and organization structure
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::IndividualsPage[FinchAPI::Models::HRIS::IndividualInDirectory])
        end
        def list(limit: nil, offset: nil, request_options: {})
        end

        # Read company directory and organization structure
        alias_method :list_individuals, :list

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
