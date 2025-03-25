# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Company
        # Update a sandbox company's data
        sig do
          params(
            accounts: T.nilable(
              T::Array[T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Account, FinchAPI::Util::AnyHash)]
            ),
            departments: T.nilable(
              T::Array[T.nilable(T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department, FinchAPI::Util::AnyHash))]
            ),
            ein: T.nilable(String),
            entity: T.nilable(T.any(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity, FinchAPI::Util::AnyHash)),
            legal_name: T.nilable(String),
            locations: T.nilable(T::Array[T.nilable(T.any(FinchAPI::Models::Location, FinchAPI::Util::AnyHash))]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash))
          )
            .returns(FinchAPI::Models::Sandbox::CompanyUpdateResponse)
        end
        def update(
          # An array of bank account objects associated with the payroll/HRIS system.
          accounts:,
          # The array of company departments.
          departments:,
          # The employer identification number.
          ein:,
          # The entity type object.
          entity:,
          # The legal name of the company.
          legal_name:,
          locations:,
          # The email of the main administrator on the account.
          primary_email:,
          # The phone number of the main administrator on the account. Format: `XXXXXXXXXX`
          primary_phone_number:,
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
