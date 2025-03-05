# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Individual
        sig do
          params(
            individual_id: String,
            dob: T.nilable(String),
            emails: T.nilable(T::Array[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email]),
            encrypted_ssn: T.nilable(String),
            ethnicity: T.nilable(Symbol),
            first_name: T.nilable(String),
            gender: T.nilable(Symbol),
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
          encrypted_ssn: nil,
          ethnicity: nil,
          first_name: nil,
          gender: nil,
          last_name: nil,
          middle_name: nil,
          phone_numbers: nil,
          preferred_name: nil,
          residence: nil,
          ssn: nil,
          request_options: {}
        )
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
