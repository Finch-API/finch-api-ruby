# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedRetrieveParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Jobs::AutomatedRetrieveParams,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :job_id

        sig do
          params(
            job_id: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(job_id:, request_options: {})
        end

        sig do
          override.returns(
            { job_id: String, request_options: FinchAPI::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
