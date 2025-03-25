# typed: strong

module FinchAPI
  class Page
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    attr_accessor :data

    sig { returns(FinchAPI::Models::Paging) }
    attr_accessor :paging

    sig { returns(String) }
    def inspect
    end
  end
end
