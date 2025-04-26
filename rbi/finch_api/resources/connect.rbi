# typed: strong

module FinchAPI
  module Resources
    class Connect
      sig { returns(FinchAPI::Resources::Connect::Sessions) }
      attr_reader :sessions

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
