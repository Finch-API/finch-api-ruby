# typed: strong

module FinchAPI
  module Models
    module HRIS
      class UpdateCompanyBenefitResponse < FinchAPI::BaseModel
        sig { returns(String) }
        def benefit_id
        end

        sig { params(_: String).returns(String) }
        def benefit_id=(_)
        end

        sig { params(benefit_id: String).void }
        def initialize(benefit_id:)
        end

        sig { override.returns({benefit_id: String}) }
        def to_hash
        end
      end
    end
  end
end
