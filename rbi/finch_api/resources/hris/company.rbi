# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        # Read basic company data
        sig do
          params(
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::HRIS::HRISCompany)
        end
        def retrieve(
          # The entity IDs to specify which entities' data to access. Provide exactly one
          # entity ID per request; a maximum of one is accepted. Required when the
          # connection has more than one entity — omitting it returns a `400`
          # `invalid_request_error`. Optional for single-entity connections.
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
