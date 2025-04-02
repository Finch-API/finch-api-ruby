# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrolledIDsResponse < FinchAPI::BaseModel
          # The id of the benefit.
          sig { returns(String) }
          attr_accessor :benefit_id

          sig { returns(T::Array[String]) }
          attr_accessor :individual_ids

          sig { params(benefit_id: String, individual_ids: T::Array[String]).returns(T.attached_class) }
          def self.new(benefit_id:, individual_ids:)
          end

          sig { override.returns({benefit_id: String, individual_ids: T::Array[String]}) }
          def to_hash
          end
        end
      end
    end
  end
end
