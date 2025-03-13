# typed: strong

module FinchAPI
  class SinglePage < ::Array
    include FinchAPI::BasePage

    Elem = type_member

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

    sig { override.returns(T::Boolean) }
    def next_page?
    end

    sig { override.returns(T.self_type) }
    def next_page
    end

    sig { override.params(blk: T.proc.params(arg0: Elem).void).void }
    def auto_paging_each(&blk)
    end
  end
end
