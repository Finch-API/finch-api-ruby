# typed: strong

module FinchAPI
  module Models
    module HRIS
      class UpdateCompanyBenefitResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::UpdateCompanyBenefitResponse,
              FinchAPI::Internal::AnyHash
            )
          end

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
