# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        class Individuals
          sig do
            params(
              benefit_id: String,
              individuals: T::Array[FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual],
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(FinchAPI::SinglePage[FinchAPI::Models::HRIS::Benefits::EnrolledIndividual])
          end
          def enroll_many(benefit_id, individuals: nil, request_options: {})
          end

          sig do
            params(
              benefit_id: String,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse)
          end
          def enrolled_ids(benefit_id, request_options: {})
          end

          sig do
            params(
              benefit_id: String,
              individual_ids: String,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(FinchAPI::SinglePage[FinchAPI::Models::HRIS::Benefits::IndividualBenefit])
          end
          def retrieve_many_benefits(benefit_id, individual_ids: nil, request_options: {})
          end

          sig do
            params(
              benefit_id: String,
              individual_ids: T::Array[String],
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(FinchAPI::SinglePage[FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual])
          end
          def unenroll_many(benefit_id, individual_ids: nil, request_options: {})
          end

          sig { params(client: FinchAPI::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
