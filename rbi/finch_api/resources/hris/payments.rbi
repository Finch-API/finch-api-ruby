# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Payments
        # Read payroll and contractor related payments by the company.
        sig do
          params(
            end_date: Date,
            start_date: Date,
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Internal::SinglePage[FinchAPI::HRIS::Payment])
        end
        def list(
          # The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
          # format. Filters payments by their **pay_date** field.
          end_date:,
          # The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
          # format. Filters payments by their **pay_date** field.
          start_date:,
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
