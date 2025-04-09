# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class EnrolledIndividualBenefit < FinchAPI::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :job_id

          sig { params(job_id: String).returns(T.attached_class) }
          def self.new(job_id:); end

          sig { override.returns({job_id: String}) }
          def to_hash; end
        end
      end

      EnrolledIndividualBenefit = Benefits::EnrolledIndividualBenefit
    end
  end
end
