# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Individual
        # Update sandbox individual
        #
        # @param individual_id [String]
        #
        # @param params [FinchAPI::Models::Sandbox::IndividualUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :dob
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::Email>, nil] :emails
        #
        #   @option params [String, nil] :encrypted_ssn Social Security Number of the individual in **encrypted** format. This field is
        #     only available with the `ssn` scope enabled and the
        #     `options: { include: ['ssn'] }` param set in the body.
        #
        #   @option params [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity, nil] :ethnicity The EEOC-defined ethnicity of the individual.
        #
        #   @option params [String, nil] :first_name The legal first name of the individual.
        #
        #   @option params [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender, nil] :gender The gender of the individual.
        #
        #   @option params [String, nil] :last_name The legal last name of the individual.
        #
        #   @option params [String, nil] :middle_name The legal middle name of the individual.
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber, nil>, nil] :phone_numbers
        #
        #   @option params [String, nil] :preferred_name The preferred name of the individual.
        #
        #   @option params [FinchAPI::Models::Location, nil] :residence
        #
        #   @option params [String, nil] :ssn Social Security Number of the individual. This field is only available with the
        #     `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        #     body.
        #     [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Sandbox::IndividualUpdateResponse]
        def update(individual_id, params = {})
          parsed, options = FinchAPI::Models::Sandbox::IndividualUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["sandbox/individual/%1$s", individual_id],
            body: parsed,
            model: FinchAPI::Models::Sandbox::IndividualUpdateResponse,
            options: options
          )
        end

        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
