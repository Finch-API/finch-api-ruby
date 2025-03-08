# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Directory
        sig do
          params(
            body: T::Array[FinchAPI::Models::Sandbox::DirectoryCreateParams::Body],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Sandbox::DirectoryCreateResponse)
        end
        def create(body: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
