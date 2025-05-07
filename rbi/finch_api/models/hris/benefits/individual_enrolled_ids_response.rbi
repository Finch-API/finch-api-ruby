# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrolledIDsResponse < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # The id of the benefit.
          sig { returns(String) }
          attr_accessor :benefit_id

          sig { returns(T::Array[String]) }
          attr_accessor :individual_ids

          sig do
            params(
              benefit_id: String,
              individual_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the benefit.
            benefit_id:,
            individual_ids:
          )
          end

          sig do
            override.returns(
              { benefit_id: String, individual_ids: T::Array[String] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
