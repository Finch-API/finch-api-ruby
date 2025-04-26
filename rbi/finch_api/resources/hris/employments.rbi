# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Employments
        # Read individual employment and income data
        sig do
          params(
            requests: T::Array[T.any(FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request, FinchAPI::Internal::AnyHash)],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(FinchAPI::Internal::ResponsesPage[FinchAPI::Models::HRIS::EmploymentDataResponse])
        end
        def retrieve_many(
          # The array of batch requests.
          requests:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
