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
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash))
          )
            .returns(FinchAPI::Internal::SinglePage[FinchAPI::Models::HRIS::Payment])
        end
        def list(
          # The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
          #   format.
          end_date:,
          # The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
          #   format.
          start_date:,
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
