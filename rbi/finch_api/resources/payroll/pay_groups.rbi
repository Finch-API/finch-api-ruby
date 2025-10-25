# typed: strong

module FinchAPI
  module Resources
    class Payroll
      class PayGroups
        # Read information from a single pay group
        sig do
          params(
            pay_group_id: String,
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Models::Payroll::PayGroupRetrieveResponse)
        end
        def retrieve(
          pay_group_id,
          # The entity IDs to specify which entities' data to access.
          entity_ids:,
          request_options: {}
        )
        end

        # Read company pay groups and frequencies
        sig do
          params(
            entity_ids: T::Array[String],
            individual_id: String,
            pay_frequencies: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::SinglePage[
              FinchAPI::Models::Payroll::PayGroupListResponse
            ]
          )
        end
        def list(
          # The entity IDs to specify which entities' data to access.
          entity_ids:,
          individual_id: nil,
          pay_frequencies: nil,
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
