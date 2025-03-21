# typed: strong

module FinchAPI
  class ResponsesPage
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    attr_accessor :responses

    sig { returns(String) }
    def inspect
    end
  end
end
