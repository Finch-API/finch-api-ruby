# typed: strong

module FinchAPI
  module Resources
    class Jobs
      sig { returns(FinchAPI::Resources::Jobs::Automated) }
      attr_reader :automated

      sig { returns(FinchAPI::Resources::Jobs::Manual) }
      attr_reader :manual

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
