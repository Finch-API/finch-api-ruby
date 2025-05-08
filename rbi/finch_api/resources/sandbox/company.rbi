# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Company
        # Update a sandbox company's data
        sig do
          params(
            accounts:
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::CompanyUpdateParams::Account::OrHash
                ]
              ),
            departments:
              T.nilable(
                T::Array[
                  T.nilable(
                    FinchAPI::Sandbox::CompanyUpdateParams::Department::OrHash
                  )
                ]
              ),
            ein: T.nilable(String),
            entity:
              T.nilable(FinchAPI::Sandbox::CompanyUpdateParams::Entity::OrHash),
            legal_name: T.nilable(String),
            locations:
              T.nilable(T::Array[T.nilable(FinchAPI::Location::OrHash)]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Models::Sandbox::CompanyUpdateResponse)
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
          # The phone number of the main administrator on the account. Format: E.164, with
          # extension where applicable, e.g. `+NNNNNNNNNNN xExtension`
          primary_phone_number:,
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
