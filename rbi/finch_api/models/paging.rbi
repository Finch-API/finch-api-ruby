# typed: strong

module FinchAPI
  module Models
    class Paging < FinchAPI::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

      # The current start index of the returned list of elements
      sig { returns(Integer) }
      attr_accessor :offset

      # The total number of elements for the entire query (not just the given page)
      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      sig { params(offset: Integer, count: Integer).returns(T.attached_class) }
      def self.new(
        # The current start index of the returned list of elements
        offset:,
        # The total number of elements for the entire query (not just the given page)
        count: nil
      )
      end

      sig { override.returns({ offset: Integer, count: Integer }) }
      def to_hash
      end
    end
  end
end
