# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrolledIDsResponse < FinchAPI::BaseModel
          sig { returns(String) }
          def benefit_id
          end

          sig { params(_: String).returns(String) }
          def benefit_id=(_)
          end

          sig { returns(T::Array[String]) }
          def individual_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def individual_ids=(_)
          end

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
