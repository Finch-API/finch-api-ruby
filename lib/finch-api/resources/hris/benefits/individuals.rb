# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        class Individuals
          # Enroll an individual into a deduction or contribution. This is an overwrite
          #   operation. If the employee is already enrolled, the enrollment amounts will be
          #   adjusted. Making the same request multiple times will not create new
          #   enrollments, but will continue to set the state of the existing enrollment.
          #
          # @param benefit_id [String]
          #
          # @param params [FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams::Individual>] :individuals Array of the individual_id to enroll and a configuration object.
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::Benefits::EnrolledIndividual>]
          #
          def enroll_many(benefit_id, params = {})
            parsed, options = FinchAPI::Models::HRIS::Benefits::IndividualEnrollManyParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["employer/benefits/%0s/individuals", benefit_id],
              body: parsed[:individuals],
              page: FinchAPI::SinglePage,
              model: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual,
              options: options
            )
          end

          # Lists individuals currently enrolled in a given deduction.
          #
          # @param benefit_id [String]
          #
          # @param params [FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsParams, Hash{Symbol=>Object}] .
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse]
          #
          def enrolled_ids(benefit_id, params = {})
            @client.request(
              method: :get,
              path: ["employer/benefits/%0s/enrolled", benefit_id],
              model: FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse,
              options: params[:request_options]
            )
          end

          # Get enrollment information for the given individuals.
          #
          # @param benefit_id [String]
          #
          # @param params [FinchAPI::Models::HRIS::Benefits::IndividualRetrieveManyBenefitsParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :individual_ids comma-delimited list of stable Finch uuids for each individual. If empty,
          #     defaults to all individuals
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::Benefits::IndividualBenefit>]
          #
          def retrieve_many_benefits(benefit_id, params = {})
            parsed, options = FinchAPI::Models::HRIS::Benefits::IndividualRetrieveManyBenefitsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["employer/benefits/%0s/individuals", benefit_id],
              query: parsed,
              page: FinchAPI::SinglePage,
              model: FinchAPI::Models::HRIS::Benefits::IndividualBenefit,
              options: options
            )
          end

          # Unenroll individuals from a deduction or contribution
          #
          # @param benefit_id [String]
          #
          # @param params [FinchAPI::Models::HRIS::Benefits::IndividualUnenrollManyParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String>] :individual_ids Array of individual_ids to unenroll.
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual>]
          #
          def unenroll_many(benefit_id, params = {})
            parsed, options = FinchAPI::Models::HRIS::Benefits::IndividualUnenrollManyParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["employer/benefits/%0s/individuals", benefit_id],
              body: parsed,
              page: FinchAPI::SinglePage,
              model: FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual,
              options: options
            )
          end

          # @param client [FinchAPI::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
