# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        sig do
          params(
            requests:
              T::Array[
                FinchAPI::HRIS::IndividualRetrieveManyParams::Request::OrHash
              ],
            entity_ids: T::Array[String],
            options:
              T.nilable(
                FinchAPI::HRIS::IndividualRetrieveManyParams::Options::OrHash
              ),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::ResponsesPage[
              FinchAPI::HRIS::IndividualResponse
            ]
          )
        end
        def retrieve_many(
          # Body param: The array of batch requests. Maximum 10000 items per request.
          requests:,
          # Query param: The entity IDs to specify which entities' data to access. Provide
          # exactly one entity ID per request; a maximum of one is accepted.
          entity_ids: nil,
          # Body param
          options: nil,
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
