# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Directory
        # Read company directory and organization structure
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::IndividualsPage[
              FinchAPI::HRIS::IndividualInDirectory
            ]
          )
        end
        def list(
          # Number of employees to return (defaults to all)
          limit: nil,
          # Index to start from (defaults to 0)
          offset: nil,
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
