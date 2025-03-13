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
  end
end
