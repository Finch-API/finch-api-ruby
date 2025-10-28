# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        sig { returns(FinchAPI::Resources::HRIS::Company::PayStatementItem) }
        attr_reader :pay_statement_item

        # Read basic company data
        sig do
          params(
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::HRIS::HRISCompany)
        end
        def retrieve(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
