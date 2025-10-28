# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Employments
        # Read individual employment and income data
        sig do
          params(
            requests:
              T::Array[
                FinchAPI::HRIS::EmploymentRetrieveManyParams::Request::OrHash
              ],
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::ResponsesPage[
              FinchAPI::HRIS::EmploymentDataResponse
            ]
          )
        end
        def retrieve_many(
          # Body param: The array of batch requests.
          requests:,
          # Query param: The entity IDs to specify which entities' data to access.
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
