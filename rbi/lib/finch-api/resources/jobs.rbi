# typed: strong

module FinchAPI
  module Resources
    class Jobs
      sig { returns(FinchAPI::Resources::Jobs::Automated) }
      def automated
      end

      sig { returns(FinchAPI::Resources::Jobs::Manual) }
      def manual
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
