# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Individual
        # Update sandbox individual
        #
        # @overload update(individual_id, dob: nil, emails: nil, encrypted_ssn: nil, ethnicity: nil, first_name: nil, gender: nil, last_name: nil, middle_name: nil, phone_numbers: nil, preferred_name: nil, residence: nil, ssn: nil, request_options: {})
        #
        # @param individual_id [String]
        # @param dob [String, nil]
        # @param emails [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::Email>, nil]
        # @param encrypted_ssn [String, nil]
        # @param ethnicity [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity, nil]
        # @param first_name [String, nil]
        # @param gender [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender, nil]
        # @param last_name [String, nil]
        # @param middle_name [String, nil]
        # @param phone_numbers [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber, nil>, nil]
        # @param preferred_name [String, nil]
        # @param residence [FinchAPI::Models::Location, nil]
        # @param ssn [String, nil]
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
