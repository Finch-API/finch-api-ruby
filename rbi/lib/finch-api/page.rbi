# typed: strong

module FinchAPI
  class Page
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def data
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def data=(_)
    end

    sig { returns(FinchAPI::Models::Paging) }
    def paging
    end

    sig { params(_: FinchAPI::Models::Paging).returns(FinchAPI::Models::Paging) }
    def paging=(_)
    end
  end
end
