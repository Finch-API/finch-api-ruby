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
          # Body param: The array of batch requests. Maximum 10000 items per request.
          requests:,
          # Query param: The entity IDs to specify which entities' data to access. Provide
          # exactly one entity ID per request; a maximum of one is accepted.
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
