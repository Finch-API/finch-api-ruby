# typed: strong

module FinchAPI
  module Models
    class Paging < FinchAPI::Internal::Type::BaseModel
      # The total number of elements for the entire query (not just the given page)
      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      # The current start index of the returned list of elements
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig { params(count: Integer, offset: Integer).returns(T.attached_class) }
      def self.new(count: nil, offset: nil); end

      sig { override.returns({count: Integer, offset: Integer}) }
      def to_hash; end
    end
  end
end
