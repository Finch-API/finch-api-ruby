# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CreateCompanyBenefitsResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The id of the benefit.
        sig { returns(String) }
        attr_accessor :benefit_id

        sig { returns(String) }
        attr_accessor :job_id

        sig do
          params(benefit_id: String, job_id: String).returns(T.attached_class)
        end
        def self.new(
          # The id of the benefit.
          benefit_id:,
          job_id:
        )
        end

        sig { override.returns({ benefit_id: String, job_id: String }) }
        def to_hash
        end
      end
    end
  end
end
