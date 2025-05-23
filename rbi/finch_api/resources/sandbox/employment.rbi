# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Employment
        # Update sandbox employment
        sig do
          params(
            individual_id: String,
            class_code: T.nilable(String),
            custom_fields:
              T.nilable(
                T::Array[
                  FinchAPI::Sandbox::EmploymentUpdateParams::CustomField::OrHash
                ]
              ),
            department:
              T.nilable(
                FinchAPI::Sandbox::EmploymentUpdateParams::Department::OrHash
              ),
            employment:
              T.nilable(
                FinchAPI::Sandbox::EmploymentUpdateParams::Employment::OrHash
              ),
            employment_status:
              T.nilable(
                FinchAPI::Sandbox::EmploymentUpdateParams::EmploymentStatus::OrSymbol
              ),
            end_date: T.nilable(String),
            first_name: T.nilable(String),
            income: T.nilable(FinchAPI::Income::OrHash),
            income_history:
              T.nilable(T::Array[T.nilable(FinchAPI::Income::OrHash)]),
            is_active: T.nilable(T::Boolean),
            last_name: T.nilable(String),
            latest_rehire_date: T.nilable(String),
            location: T.nilable(FinchAPI::Location::OrHash),
            manager:
              T.nilable(
                FinchAPI::Sandbox::EmploymentUpdateParams::Manager::OrHash
              ),
            middle_name: T.nilable(String),
            source_id: T.nilable(String),
            start_date: T.nilable(String),
            title: T.nilable(String),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Models::Sandbox::EmploymentUpdateResponse)
        end
        def update(
          individual_id,
          # Worker's compensation classification code for this employee
          class_code: nil,
          # Custom fields for the individual. These are fields which are defined by the
          # employer in the system. Custom fields are not currently supported for assisted
          # connections.
          custom_fields: nil,
          # The department object.
          department: nil,
          # The employment object.
          employment: nil,
          # The detailed employment status of the individual. Available options: `active`,
          # `deceased`, `leave`, `onboarding`, `prehire`, `retired`, `terminated`.
          employment_status: nil,
          end_date: nil,
          # The legal first name of the individual.
          first_name: nil,
          # The employee's income as reported by the provider. This may not always be
          # annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
          # depending on what information the provider returns.
          income: nil,
          # The array of income history.
          income_history: nil,
          # `true` if the individual an an active employee or contractor at the company.
          is_active: nil,
          # The legal last name of the individual.
          last_name: nil,
          latest_rehire_date: nil,
          location: nil,
          # The manager object representing the manager of the individual within the org.
          manager: nil,
          # The legal middle name of the individual.
          middle_name: nil,
          # The source system's unique employment identifier for this individual
          source_id: nil,
          start_date: nil,
          # The current title of the individual.
          title: nil,
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
