# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Directory
        # Add new individuals to a sandbox company
        sig do
          params(
            body: T::Array[T.any(FinchAPI::Models::Sandbox::DirectoryCreateParams::Body, FinchAPI::Internal::AnyHash)],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(T::Array[T.anything])
        end
        def create(
          # Array of individuals to create. Takes all combined fields from `/individual` and
          # `/employment` endpoints. All fields are optional.
          body: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
