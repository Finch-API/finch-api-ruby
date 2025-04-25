# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Individual
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Sandbox::IndividualUpdateParams} for more details.
        #
        # Update sandbox individual
        #
        # @overload update(individual_id, dob: nil, emails: nil, encrypted_ssn: nil, ethnicity: nil, first_name: nil, gender: nil, last_name: nil, middle_name: nil, phone_numbers: nil, preferred_name: nil, residence: nil, ssn: nil, request_options: {})
        #
        # @param individual_id [String]
        #
        # @param dob [String, nil]
        #
        # @param emails [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::Email>, nil]
        #
        # @param encrypted_ssn [String, nil] Social Security Number of the individual in **encrypted** format. This field is
        # ...
        #
        # @param ethnicity [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity, nil] The EEOC-defined ethnicity of the individual.
        #
        # @param first_name [String, nil] The legal first name of the individual.
        #
        # @param gender [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender, nil] The gender of the individual.
        #
        # @param last_name [String, nil] The legal last name of the individual.
        #
        # @param middle_name [String, nil] The legal middle name of the individual.
        #
        # @param phone_numbers [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber, nil>, nil]
        #
        # @param preferred_name [String, nil] The preferred name of the individual.
        #
        # @param residence [FinchAPI::Models::Location, nil]
        #
        # @param ssn [String, nil] Social Security Number of the individual. This field is only available with the
        # ...
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::IndividualUpdateResponse]
        #
        # @see FinchAPI::Models::Sandbox::IndividualUpdateParams
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
