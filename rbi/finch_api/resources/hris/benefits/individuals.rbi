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
              entity_ids: T::Array[String],
              individuals:
                T::Array[
                  FinchAPI::HRIS::Benefits::IndividualEnrollManyParams::Individual::OrHash
                ],
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(
              FinchAPI::HRIS::Benefits::EnrolledIndividualBenefitResponse
            )
          end
          def enroll_many(
            # Path param:
            benefit_id,
            # Query param: The entity IDs to specify which entities' data to access.
            entity_ids: nil,
            # Body param: Array of the individual_id to enroll and a configuration object.
            individuals: nil,
            request_options: {}
          )
          end

          # Lists individuals currently enrolled in a given deduction.
          sig do
            params(
              benefit_id: String,
              entity_ids: T::Array[String],
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(
              FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse
            )
          end
          def enrolled_ids(
            benefit_id,
            # The entity IDs to specify which entities' data to access.
            entity_ids: nil,
            request_options: {}
          )
          end

          # Get enrollment information for the given individuals.
          sig do
            params(
              benefit_id: String,
              entity_ids: T::Array[String],
              individual_ids: String,
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(
              FinchAPI::Internal::SinglePage[
                FinchAPI::HRIS::Benefits::IndividualBenefit
              ]
            )
          end
          def retrieve_many_benefits(
            benefit_id,
            # The entity IDs to specify which entities' data to access.
            entity_ids: nil,
            # comma-delimited list of stable Finch uuids for each individual. If empty,
            # defaults to all individuals
            individual_ids: nil,
            request_options: {}
          )
          end

          # Unenroll individuals from a deduction or contribution
          sig do
            params(
              benefit_id: String,
              entity_ids: T::Array[String],
              individual_ids: T::Array[String],
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(
              FinchAPI::HRIS::Benefits::UnenrolledIndividualBenefitResponse
            )
          end
          def unenroll_many(
            # Path param:
            benefit_id,
            # Query param: The entity IDs to specify which entities' data to access.
            entity_ids: nil,
            # Body param: Array of individual_ids to unenroll.
            individual_ids: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: FinchAPI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
