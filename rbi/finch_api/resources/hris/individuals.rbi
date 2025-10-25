# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        sig do
          params(
            entity_ids: T::Array[String],
            options:
              T.nilable(
                FinchAPI::HRIS::IndividualRetrieveManyParams::Options::OrHash
              ),
            requests:
              T::Array[
                FinchAPI::HRIS::IndividualRetrieveManyParams::Request::OrHash
              ],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::ResponsesPage[
              FinchAPI::HRIS::IndividualResponse
            ]
          )
        end
        def retrieve_many(
          # Query param: The entity IDs to specify which entities' data to access.
          entity_ids:,
          # Body param:
          options: nil,
          # Body param:
          requests: nil,
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
