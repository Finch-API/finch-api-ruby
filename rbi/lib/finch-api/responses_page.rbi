# typed: strong

module FinchAPI
  class ResponsesPage
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def responses
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def responses=(_)
    end

    sig do
      params(
        client: FinchAPI::BaseClient,
        req: FinchAPI::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        page_data: T::Array[T.anything]
      )
        .returns(T.attached_class)
    end
    def self.new(client:, req:, headers:, page_data:)
    end
  end
end
