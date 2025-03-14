# typed: strong

module FinchAPI
  class ResponsesPage
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    def responses
    end

    sig { params(_: T.nilable(T::Array[Elem])).returns(T.nilable(T::Array[Elem])) }
    def responses=(_)
    end
  end
end
