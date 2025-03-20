# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Directory
        # Add new individuals to a sandbox company
        sig do
          params(
            body: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T::Array[T.anything])
        end
        def create(
          # Array of individuals to create. Takes all combined fields from `/individual` and
          #   `/employment` endpoints. All fields are optional.
          body: nil,
          request_options: {}
        )
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
