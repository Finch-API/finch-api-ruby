# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        class Individuals
          # Enroll an individual into a deduction or contribution. This is an overwrite
          # operation. If the employee is already enrolled, the enrollment amounts will be
          # adjusted. Making the same request multiple times will not create new
          # enrollments, but will continue to set the state of the existing enrollment.
          sig do
            params(
              benefit_id: String,
              individuals: T::Array[
                T.any(
                  FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual,
                  FinchAPI::Internal::AnyHash
                )
              ],
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
            )
              .returns(FinchAPI::Models::HRIS::Benefits::EnrolledIndividualBenifit)
          end
          def enroll_many(
            benefit_id,
            # Array of the individual_id to enroll and a configuration object.
            individuals: nil,
            request_options: {}
          ); end
          # Lists individuals currently enrolled in a given deduction.
          sig do
            params(
              benefit_id: String,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
            )
              .returns(FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse)
          end
          def enrolled_ids(benefit_id, request_options: {}); end

          # Get enrollment information for the given individuals.
          sig do
            params(
              benefit_id: String,
              individual_ids: String,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
            )
              .returns(FinchAPI::Internal::SinglePage[FinchAPI::Models::HRIS::Benefits::IndividualBenefit])
          end
          def retrieve_many_benefits(
            benefit_id,
            # comma-delimited list of stable Finch uuids for each individual. If empty,
            # defaults to all individuals
            individual_ids: nil,
            request_options: {}
          ); end
          # Unenroll individuals from a deduction or contribution
          sig do
            params(
              benefit_id: String,
              individual_ids: T::Array[String],
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
            )
              .returns(FinchAPI::Models::HRIS::Benefits::IndividualUnenrollManyResponse)
          end
          def unenroll_many(
            benefit_id,
            # Array of individual_ids to unenroll.
            individual_ids: nil,
            request_options: {}
          ); end
          # @api private
          sig { params(client: FinchAPI::Client).returns(T.attached_class) }
          def self.new(client:); end
        end
      end
    end
  end
end
