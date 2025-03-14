# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class PayStatements
        # Read detailed pay statements for each individual.
        #
        #   Deduction and contribution types are supported by the payroll systems that
        #   supports Benefits.
        sig do
          params(
            requests: T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::ResponsesPage[FinchAPI::Models::HRIS::PayStatementResponse])
        end
        def retrieve_many(
          # The array of batch requests.
          requests:,
          request_options: {}
        )
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
