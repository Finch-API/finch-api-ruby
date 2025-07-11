# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        class Individuals
          # Enroll an individual into a deduction or contribution. This is an overwrite
          # operation. If the employee is already enrolled, the enrollment amounts will be
          # adjusted. Making the same request multiple times will not create new
          # enrollments, but will continue to set the state of the existing enrollment.
          #
          # @overload enroll_many(benefit_id, individuals: nil, request_options: {})
          #
          # @param benefit_id [String]
          #
          # @param individuals [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>] Array of the individual_id to enroll and a configuration object.
          #
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Models::HRIS::Benefits::EnrolledIndividualBenefitResponse]
          #
          # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams
          def enroll_many(benefit_id, params = {})
            parsed, options = FinchAPI::HRIS::Benefits::IndividualEnrollManyParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["employer/benefits/%1$s/individuals", benefit_id],
              body: parsed[:individuals],
              model: FinchAPI::HRIS::Benefits::EnrolledIndividualBenefitResponse,
              options: options
            )
          end

          # Lists individuals currently enrolled in a given deduction.
          #
          # @overload enrolled_ids(benefit_id, request_options: {})
          #
          # @param benefit_id [String]
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse]
          #
          # @see FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsParams
          def enrolled_ids(benefit_id, params = {})
            @client.request(
              method: :get,
              path: ["employer/benefits/%1$s/enrolled", benefit_id],
              model: FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {FinchAPI::Models::HRIS::Benefits::IndividualRetrieveManyBenefitsParams} for
          # more details.
          #
          # Get enrollment information for the given individuals.
          #
          # @overload retrieve_many_benefits(benefit_id, individual_ids: nil, request_options: {})
          #
          # @param benefit_id [String]
          #
          # @param individual_ids [String] comma-delimited list of stable Finch uuids for each individual. If empty, defaul
          #
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::HRIS::Benefits::IndividualBenefit>]
          #
          # @see FinchAPI::Models::HRIS::Benefits::IndividualRetrieveManyBenefitsParams
          def retrieve_many_benefits(benefit_id, params = {})
            parsed, options = FinchAPI::HRIS::Benefits::IndividualRetrieveManyBenefitsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["employer/benefits/%1$s/individuals", benefit_id],
              query: parsed,
              page: FinchAPI::Internal::SinglePage,
              model: FinchAPI::HRIS::Benefits::IndividualBenefit,
              options: options
            )
          end

          # Unenroll individuals from a deduction or contribution
          #
          # @overload unenroll_many(benefit_id, individual_ids: nil, request_options: {})
          #
          # @param benefit_id [String]
          #
          # @param individual_ids [Array<String>] Array of individual_ids to unenroll.
          #
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Models::HRIS::Benefits::UnenrolledIndividualBenefitResponse]
          #
          # @see FinchAPI::Models::HRIS::Benefits::IndividualUnenrollManyParams
          def unenroll_many(benefit_id, params = {})
            parsed, options = FinchAPI::HRIS::Benefits::IndividualUnenrollManyParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["employer/benefits/%1$s/individuals", benefit_id],
              body: parsed,
              model: FinchAPI::HRIS::Benefits::UnenrolledIndividualBenefitResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [FinchAPI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
