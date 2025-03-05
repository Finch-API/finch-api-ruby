# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Company
        sig do
          params(
            accounts: T.nilable(T::Array[FinchAPI::Models::Sandbox::CompanyUpdateParams::Account]),
            departments: T.nilable(T::Array[T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Department)]),
            ein: T.nilable(String),
            entity: T.nilable(FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity),
            legal_name: T.nilable(String),
            locations: T.nilable(T::Array[T.nilable(FinchAPI::Models::Location)]),
            primary_email: T.nilable(String),
            primary_phone_number: T.nilable(String),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Sandbox::CompanyUpdateResponse)
        end
        def update(
          accounts:,
          departments:,
          ein:,
          entity:,
          legal_name:,
          locations:,
          primary_email:,
          primary_phone_number:,
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
