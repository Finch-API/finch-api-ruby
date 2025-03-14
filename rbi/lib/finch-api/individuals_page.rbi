# typed: strong

module FinchAPI
  class IndividualsPage
    include FinchAPI::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    def individuals
    end

    sig { params(_: T.nilable(T::Array[Elem])).returns(T.nilable(T::Array[Elem])) }
    def individuals=(_)
    end

    sig { returns(FinchAPI::Models::Paging) }
    def paging
    end

    sig { params(_: FinchAPI::Models::Paging).returns(FinchAPI::Models::Paging) }
    def paging=(_)
    end
  end
end
