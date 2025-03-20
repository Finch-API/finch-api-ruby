# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Individual
        # Update sandbox individual
        sig do
          params(
            individual_id: String,
            dob: T.nilable(String),
            emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]),
            encrypted_ssn: T.nilable(String),
            ethnicity: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity::OrSymbol),
            first_name: T.nilable(String),
            gender: T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender::OrSymbol),
            last_name: T.nilable(String),
            middle_name: T.nilable(String),
            phone_numbers: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber)]),
            preferred_name: T.nilable(String),
            residence: T.nilable(FinchAPI::Models::Location),
            ssn: T.nilable(String),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Sandbox::IndividualUpdateResponse)
        end
        def update(
          individual_id,
          dob: nil,
          emails: nil,
          # Social Security Number of the individual in **encrypted** format. This field is
          #   only available with the `ssn` scope enabled and the
          #   `options: { include: ['ssn'] }` param set in the body.
          encrypted_ssn: nil,
          # The EEOC-defined ethnicity of the individual.
          ethnicity: nil,
          # The legal first name of the individual.
          first_name: nil,
          # The gender of the individual.
          gender: nil,
          # The legal last name of the individual.
          last_name: nil,
          # The legal middle name of the individual.
          middle_name: nil,
          phone_numbers: nil,
          # The preferred name of the individual.
          preferred_name: nil,
          residence: nil,
          # Social Security Number of the individual. This field is only available with the
          #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
          #   body.
          #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
          ssn: nil,
          request_options: {}
        )
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
