# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrolledIDsParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { params(request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])).void }
          def initialize(request_options: {})
          end

          sig { override.returns({request_options: FinchAPI::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
