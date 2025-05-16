# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrolledIDsParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Benefits::IndividualEnrolledIDsParams,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            params(request_options: FinchAPI::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: FinchAPI::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
