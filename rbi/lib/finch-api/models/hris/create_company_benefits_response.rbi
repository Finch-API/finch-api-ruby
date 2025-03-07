# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CreateCompanyBenefitsResponse < FinchAPI::BaseModel
        sig { returns(String) }
        def benefit_id
        end

        sig { params(_: String).returns(String) }
        def benefit_id=(_)
        end

        sig { params(benefit_id: String).returns(T.attached_class) }
        def self.new(benefit_id:)
        end

        sig { override.returns({benefit_id: String}) }
        def to_hash
        end
      end
    end
  end
end
