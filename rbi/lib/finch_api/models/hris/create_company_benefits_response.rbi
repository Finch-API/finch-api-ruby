# typed: strong

module FinchAPI
  module Models
    module HRIS
      class CreateCompanyBenefitsResponse < FinchAPI::Internal::Type::BaseModel
        # The id of the benefit.
        sig { returns(String) }
        attr_accessor :benefit_id

        sig { params(benefit_id: String).returns(T.attached_class) }
        def self.new(benefit_id:); end

        sig { override.returns({benefit_id: String}) }
        def to_hash; end
      end
    end
  end
end
