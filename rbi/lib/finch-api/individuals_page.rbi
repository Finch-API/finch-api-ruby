# typed: strong

module FinchAPI
  class IndividualsPage
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def individuals
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def individuals=(_)
    end

    sig { returns(FinchAPI::Models::Paging) }
    def paging
    end

    sig { params(_: FinchAPI::Models::Paging).returns(FinchAPI::Models::Paging) }
    def paging=(_)
    end

    sig do
      params(
        client: FinchAPI::BaseClient,
        req: FinchAPI::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        unwrapped: T::Hash[Symbol, T.anything]
      )
        .void
    end
    def initialize(client:, req:, headers:, unwrapped:)
    end
  end
end
