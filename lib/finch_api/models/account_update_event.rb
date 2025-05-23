# frozen_string_literal: true

module FinchAPI
  module Models
    class AccountUpdateEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::Models::AccountUpdateEvent::Data, nil]
      optional :data, -> { FinchAPI::AccountUpdateEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::Models::AccountUpdateEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::AccountUpdateEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::Models::AccountUpdateEvent::Data]
      #   @param event_type [Symbol, FinchAPI::Models::AccountUpdateEvent::EventType]

      class Data < FinchAPI::Internal::Type::BaseModel
        # @!attribute authentication_method
        #
        #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod]
        required :authentication_method, -> { FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod }

        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::ConnectionStatusType]
        required :status, enum: -> { FinchAPI::ConnectionStatusType }

        # @!method initialize(authentication_method:, status:)
        #   @param authentication_method [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod]
        #   @param status [Symbol, FinchAPI::Models::ConnectionStatusType]

        # @see FinchAPI::Models::AccountUpdateEvent::Data#authentication_method
        class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
          # @!attribute benefits_support
          #   Each benefit type and their supported features. If the benefit type is not
          #   supported, the property will be null
          #
          #   @return [FinchAPI::Models::HRIS::BenefitsSupport, nil]
          optional :benefits_support, -> { FinchAPI::HRIS::BenefitsSupport }, nil?: true

          # @!attribute supported_fields
          #   The supported data fields returned by our HR and payroll endpoints
          #
          #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields, nil]
          optional :supported_fields,
                   -> { FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields },
                   nil?: true

          # @!attribute type
          #   The type of authentication method.
          #
          #   @return [Symbol, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type, nil]
          optional :type, enum: -> { FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::Type }

          # @!method initialize(benefits_support: nil, supported_fields: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod} for more
          #   details.
          #
          #   @param benefits_support [FinchAPI::Models::HRIS::BenefitsSupport, nil] Each benefit type and their supported features. If the benefit type is not suppo
          #
          #   @param supported_fields [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields, nil] The supported data fields returned by our HR and payroll endpoints
          #
          #   @param type [Symbol, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type] The type of authentication method.

          # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod#supported_fields
          class SupportedFields < FinchAPI::Internal::Type::BaseModel
            # @!attribute company
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company, nil]
            optional :company,
                     -> { FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company }

            # @!attribute directory
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory, nil]
            optional :directory,
                     -> {
                       FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory
                     }

            # @!attribute employment
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment, nil]
            optional :employment,
                     -> {
                       FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment
                     }

            # @!attribute individual
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual, nil]
            optional :individual,
                     -> {
                       FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual
                     }

            # @!attribute pay_group
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup, nil]
            optional :pay_group,
                     -> {
                       FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup
                     }

            # @!attribute pay_statement
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement, nil]
            optional :pay_statement,
                     -> {
                       FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement
                     }

            # @!attribute payment
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment, nil]
            optional :payment,
                     -> { FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment }

            # @!method initialize(company: nil, directory: nil, employment: nil, individual: nil, pay_group: nil, pay_statement: nil, payment: nil)
            #   The supported data fields returned by our HR and payroll endpoints
            #
            #   @param company [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company]
            #   @param directory [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory]
            #   @param employment [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment]
            #   @param individual [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual]
            #   @param pay_group [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup]
            #   @param pay_statement [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement]
            #   @param payment [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment]

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#company
            class Company < FinchAPI::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::Boolean

              # @!attribute accounts
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts, nil]
              optional :accounts,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts
                       }

              # @!attribute departments
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments, nil]
              optional :departments,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments
                       }

              # @!attribute ein
              #
              #   @return [Boolean, nil]
              optional :ein, FinchAPI::Internal::Type::Boolean

              # @!attribute entity
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity, nil]
              optional :entity,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity
                       }

              # @!attribute legal_name
              #
              #   @return [Boolean, nil]
              optional :legal_name, FinchAPI::Internal::Type::Boolean

              # @!attribute locations
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations, nil]
              optional :locations,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations
                       }

              # @!attribute primary_email
              #
              #   @return [Boolean, nil]
              optional :primary_email, FinchAPI::Internal::Type::Boolean

              # @!attribute primary_phone_number
              #
              #   @return [Boolean, nil]
              optional :primary_phone_number, FinchAPI::Internal::Type::Boolean

              # @!method initialize(id: nil, accounts: nil, departments: nil, ein: nil, entity: nil, legal_name: nil, locations: nil, primary_email: nil, primary_phone_number: nil)
              #   @param id [Boolean]
              #   @param accounts [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts]
              #   @param departments [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments]
              #   @param ein [Boolean]
              #   @param entity [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity]
              #   @param legal_name [Boolean]
              #   @param locations [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations]
              #   @param primary_email [Boolean]
              #   @param primary_phone_number [Boolean]

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#accounts
              class Accounts < FinchAPI::Internal::Type::BaseModel
                # @!attribute account_name
                #
                #   @return [Boolean, nil]
                optional :account_name, FinchAPI::Internal::Type::Boolean

                # @!attribute account_number
                #
                #   @return [Boolean, nil]
                optional :account_number, FinchAPI::Internal::Type::Boolean

                # @!attribute account_type
                #
                #   @return [Boolean, nil]
                optional :account_type, FinchAPI::Internal::Type::Boolean

                # @!attribute institution_name
                #
                #   @return [Boolean, nil]
                optional :institution_name, FinchAPI::Internal::Type::Boolean

                # @!attribute routing_number
                #
                #   @return [Boolean, nil]
                optional :routing_number, FinchAPI::Internal::Type::Boolean

                # @!method initialize(account_name: nil, account_number: nil, account_type: nil, institution_name: nil, routing_number: nil)
                #   @param account_name [Boolean]
                #   @param account_number [Boolean]
                #   @param account_type [Boolean]
                #   @param institution_name [Boolean]
                #   @param routing_number [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#departments
              class Departments < FinchAPI::Internal::Type::BaseModel
                # @!attribute name
                #
                #   @return [Boolean, nil]
                optional :name, FinchAPI::Internal::Type::Boolean

                # @!attribute parent
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent, nil]
                optional :parent,
                         -> {
                           FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent
                         }

                # @!method initialize(name: nil, parent: nil)
                #   @param name [Boolean]
                #   @param parent [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent]

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments#parent
                class Parent < FinchAPI::Internal::Type::BaseModel
                  # @!attribute name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::Boolean

                  # @!method initialize(name: nil)
                  #   @param name [Boolean]
                end
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#entity
              class Entity < FinchAPI::Internal::Type::BaseModel
                # @!attribute subtype
                #
                #   @return [Boolean, nil]
                optional :subtype, FinchAPI::Internal::Type::Boolean

                # @!attribute type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::Boolean

                # @!method initialize(subtype: nil, type: nil)
                #   @param subtype [Boolean]
                #   @param type [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#locations
              class Locations < FinchAPI::Internal::Type::BaseModel
                # @!attribute city
                #
                #   @return [Boolean, nil]
                optional :city, FinchAPI::Internal::Type::Boolean

                # @!attribute country
                #
                #   @return [Boolean, nil]
                optional :country, FinchAPI::Internal::Type::Boolean

                # @!attribute line1
                #
                #   @return [Boolean, nil]
                optional :line1, FinchAPI::Internal::Type::Boolean

                # @!attribute line2
                #
                #   @return [Boolean, nil]
                optional :line2, FinchAPI::Internal::Type::Boolean

                # @!attribute postal_code
                #
                #   @return [Boolean, nil]
                optional :postal_code, FinchAPI::Internal::Type::Boolean

                # @!attribute state
                #
                #   @return [Boolean, nil]
                optional :state, FinchAPI::Internal::Type::Boolean

                # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                #   @param city [Boolean]
                #   @param country [Boolean]
                #   @param line1 [Boolean]
                #   @param line2 [Boolean]
                #   @param postal_code [Boolean]
                #   @param state [Boolean]
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#directory
            class Directory < FinchAPI::Internal::Type::BaseModel
              # @!attribute individuals
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals, nil]
              optional :individuals,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals
                       }

              # @!attribute paging
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging, nil]
              optional :paging,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging
                       }

              # @!method initialize(individuals: nil, paging: nil)
              #   @param individuals [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals]
              #   @param paging [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging]

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory#individuals
              class Individuals < FinchAPI::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Boolean, nil]
                optional :id, FinchAPI::Internal::Type::Boolean

                # @!attribute department
                #
                #   @return [Boolean, nil]
                optional :department, FinchAPI::Internal::Type::Boolean

                # @!attribute first_name
                #
                #   @return [Boolean, nil]
                optional :first_name, FinchAPI::Internal::Type::Boolean

                # @!attribute is_active
                #
                #   @return [Boolean, nil]
                optional :is_active, FinchAPI::Internal::Type::Boolean

                # @!attribute last_name
                #
                #   @return [Boolean, nil]
                optional :last_name, FinchAPI::Internal::Type::Boolean

                # @!attribute manager
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager, nil]
                optional :manager,
                         -> {
                           FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager
                         }

                # @!attribute middle_name
                #
                #   @return [Boolean, nil]
                optional :middle_name, FinchAPI::Internal::Type::Boolean

                # @!method initialize(id: nil, department: nil, first_name: nil, is_active: nil, last_name: nil, manager: nil, middle_name: nil)
                #   @param id [Boolean]
                #   @param department [Boolean]
                #   @param first_name [Boolean]
                #   @param is_active [Boolean]
                #   @param last_name [Boolean]
                #   @param manager [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager]
                #   @param middle_name [Boolean]

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals#manager
                class Manager < FinchAPI::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [Boolean, nil]
                  optional :id, FinchAPI::Internal::Type::Boolean

                  # @!method initialize(id: nil)
                  #   @param id [Boolean]
                end
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory#paging
              class Paging < FinchAPI::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Boolean, nil]
                optional :count, FinchAPI::Internal::Type::Boolean

                # @!attribute offset
                #
                #   @return [Boolean, nil]
                optional :offset, FinchAPI::Internal::Type::Boolean

                # @!method initialize(count: nil, offset: nil)
                #   @param count [Boolean]
                #   @param offset [Boolean]
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#employment
            class Employment < FinchAPI::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::Boolean

              # @!attribute class_code
              #
              #   @return [Boolean, nil]
              optional :class_code, FinchAPI::Internal::Type::Boolean

              # @!attribute custom_fields
              #
              #   @return [Boolean, nil]
              optional :custom_fields, FinchAPI::Internal::Type::Boolean

              # @!attribute department
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department, nil]
              optional :department,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department
                       }

              # @!attribute employment
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment, nil]
              optional :employment,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment
                       }

              # @!attribute employment_status
              #
              #   @return [Boolean, nil]
              optional :employment_status, FinchAPI::Internal::Type::Boolean

              # @!attribute end_date
              #
              #   @return [Boolean, nil]
              optional :end_date, FinchAPI::Internal::Type::Boolean

              # @!attribute first_name
              #
              #   @return [Boolean, nil]
              optional :first_name, FinchAPI::Internal::Type::Boolean

              # @!attribute income
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income, nil]
              optional :income,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income
                       }

              # @!attribute income_history
              #
              #   @return [Boolean, nil]
              optional :income_history, FinchAPI::Internal::Type::Boolean

              # @!attribute is_active
              #
              #   @return [Boolean, nil]
              optional :is_active, FinchAPI::Internal::Type::Boolean

              # @!attribute last_name
              #
              #   @return [Boolean, nil]
              optional :last_name, FinchAPI::Internal::Type::Boolean

              # @!attribute location
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location, nil]
              optional :location,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location
                       }

              # @!attribute manager
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager, nil]
              optional :manager,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager
                       }

              # @!attribute middle_name
              #
              #   @return [Boolean, nil]
              optional :middle_name, FinchAPI::Internal::Type::Boolean

              # @!attribute start_date
              #
              #   @return [Boolean, nil]
              optional :start_date, FinchAPI::Internal::Type::Boolean

              # @!attribute title
              #
              #   @return [Boolean, nil]
              optional :title, FinchAPI::Internal::Type::Boolean

              # @!method initialize(id: nil, class_code: nil, custom_fields: nil, department: nil, employment: nil, employment_status: nil, end_date: nil, first_name: nil, income: nil, income_history: nil, is_active: nil, last_name: nil, location: nil, manager: nil, middle_name: nil, start_date: nil, title: nil)
              #   @param id [Boolean]
              #   @param class_code [Boolean]
              #   @param custom_fields [Boolean]
              #   @param department [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department]
              #   @param employment [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment]
              #   @param employment_status [Boolean]
              #   @param end_date [Boolean]
              #   @param first_name [Boolean]
              #   @param income [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income]
              #   @param income_history [Boolean]
              #   @param is_active [Boolean]
              #   @param last_name [Boolean]
              #   @param location [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location]
              #   @param manager [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager]
              #   @param middle_name [Boolean]
              #   @param start_date [Boolean]
              #   @param title [Boolean]

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#department
              class Department < FinchAPI::Internal::Type::BaseModel
                # @!attribute name
                #
                #   @return [Boolean, nil]
                optional :name, FinchAPI::Internal::Type::Boolean

                # @!method initialize(name: nil)
                #   @param name [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#employment
              class Employment < FinchAPI::Internal::Type::BaseModel
                # @!attribute subtype
                #
                #   @return [Boolean, nil]
                optional :subtype, FinchAPI::Internal::Type::Boolean

                # @!attribute type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::Boolean

                # @!method initialize(subtype: nil, type: nil)
                #   @param subtype [Boolean]
                #   @param type [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#income
              class Income < FinchAPI::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Boolean, nil]
                optional :amount, FinchAPI::Internal::Type::Boolean

                # @!attribute currency
                #
                #   @return [Boolean, nil]
                optional :currency, FinchAPI::Internal::Type::Boolean

                # @!attribute unit
                #
                #   @return [Boolean, nil]
                optional :unit, FinchAPI::Internal::Type::Boolean

                # @!method initialize(amount: nil, currency: nil, unit: nil)
                #   @param amount [Boolean]
                #   @param currency [Boolean]
                #   @param unit [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#location
              class Location < FinchAPI::Internal::Type::BaseModel
                # @!attribute city
                #
                #   @return [Boolean, nil]
                optional :city, FinchAPI::Internal::Type::Boolean

                # @!attribute country
                #
                #   @return [Boolean, nil]
                optional :country, FinchAPI::Internal::Type::Boolean

                # @!attribute line1
                #
                #   @return [Boolean, nil]
                optional :line1, FinchAPI::Internal::Type::Boolean

                # @!attribute line2
                #
                #   @return [Boolean, nil]
                optional :line2, FinchAPI::Internal::Type::Boolean

                # @!attribute postal_code
                #
                #   @return [Boolean, nil]
                optional :postal_code, FinchAPI::Internal::Type::Boolean

                # @!attribute state
                #
                #   @return [Boolean, nil]
                optional :state, FinchAPI::Internal::Type::Boolean

                # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                #   @param city [Boolean]
                #   @param country [Boolean]
                #   @param line1 [Boolean]
                #   @param line2 [Boolean]
                #   @param postal_code [Boolean]
                #   @param state [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#manager
              class Manager < FinchAPI::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Boolean, nil]
                optional :id, FinchAPI::Internal::Type::Boolean

                # @!method initialize(id: nil)
                #   @param id [Boolean]
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#individual
            class Individual < FinchAPI::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::Boolean

              # @!attribute dob
              #
              #   @return [Boolean, nil]
              optional :dob, FinchAPI::Internal::Type::Boolean

              # @!attribute emails
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails, nil]
              optional :emails,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails
                       }

              # @!attribute encrypted_ssn
              #
              #   @return [Boolean, nil]
              optional :encrypted_ssn, FinchAPI::Internal::Type::Boolean

              # @!attribute ethnicity
              #
              #   @return [Boolean, nil]
              optional :ethnicity, FinchAPI::Internal::Type::Boolean

              # @!attribute first_name
              #
              #   @return [Boolean, nil]
              optional :first_name, FinchAPI::Internal::Type::Boolean

              # @!attribute gender
              #
              #   @return [Boolean, nil]
              optional :gender, FinchAPI::Internal::Type::Boolean

              # @!attribute last_name
              #
              #   @return [Boolean, nil]
              optional :last_name, FinchAPI::Internal::Type::Boolean

              # @!attribute middle_name
              #
              #   @return [Boolean, nil]
              optional :middle_name, FinchAPI::Internal::Type::Boolean

              # @!attribute phone_numbers
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers, nil]
              optional :phone_numbers,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers
                       }

              # @!attribute preferred_name
              #
              #   @return [Boolean, nil]
              optional :preferred_name, FinchAPI::Internal::Type::Boolean

              # @!attribute residence
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence, nil]
              optional :residence,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence
                       }

              # @!attribute ssn
              #
              #   @return [Boolean, nil]
              optional :ssn, FinchAPI::Internal::Type::Boolean

              # @!method initialize(id: nil, dob: nil, emails: nil, encrypted_ssn: nil, ethnicity: nil, first_name: nil, gender: nil, last_name: nil, middle_name: nil, phone_numbers: nil, preferred_name: nil, residence: nil, ssn: nil)
              #   @param id [Boolean]
              #   @param dob [Boolean]
              #   @param emails [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails]
              #   @param encrypted_ssn [Boolean]
              #   @param ethnicity [Boolean]
              #   @param first_name [Boolean]
              #   @param gender [Boolean]
              #   @param last_name [Boolean]
              #   @param middle_name [Boolean]
              #   @param phone_numbers [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers]
              #   @param preferred_name [Boolean]
              #   @param residence [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence]
              #   @param ssn [Boolean]

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual#emails
              class Emails < FinchAPI::Internal::Type::BaseModel
                # @!attribute data
                #
                #   @return [Boolean, nil]
                optional :data, FinchAPI::Internal::Type::Boolean

                # @!attribute type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::Boolean

                # @!method initialize(data: nil, type: nil)
                #   @param data [Boolean]
                #   @param type [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual#phone_numbers
              class PhoneNumbers < FinchAPI::Internal::Type::BaseModel
                # @!attribute data
                #
                #   @return [Boolean, nil]
                optional :data, FinchAPI::Internal::Type::Boolean

                # @!attribute type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::Boolean

                # @!method initialize(data: nil, type: nil)
                #   @param data [Boolean]
                #   @param type [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual#residence
              class Residence < FinchAPI::Internal::Type::BaseModel
                # @!attribute city
                #
                #   @return [Boolean, nil]
                optional :city, FinchAPI::Internal::Type::Boolean

                # @!attribute country
                #
                #   @return [Boolean, nil]
                optional :country, FinchAPI::Internal::Type::Boolean

                # @!attribute line1
                #
                #   @return [Boolean, nil]
                optional :line1, FinchAPI::Internal::Type::Boolean

                # @!attribute line2
                #
                #   @return [Boolean, nil]
                optional :line2, FinchAPI::Internal::Type::Boolean

                # @!attribute postal_code
                #
                #   @return [Boolean, nil]
                optional :postal_code, FinchAPI::Internal::Type::Boolean

                # @!attribute state
                #
                #   @return [Boolean, nil]
                optional :state, FinchAPI::Internal::Type::Boolean

                # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                #   @param city [Boolean]
                #   @param country [Boolean]
                #   @param line1 [Boolean]
                #   @param line2 [Boolean]
                #   @param postal_code [Boolean]
                #   @param state [Boolean]
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#pay_group
            class PayGroup < FinchAPI::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::Boolean

              # @!attribute individual_ids
              #
              #   @return [Boolean, nil]
              optional :individual_ids, FinchAPI::Internal::Type::Boolean

              # @!attribute name
              #
              #   @return [Boolean, nil]
              optional :name, FinchAPI::Internal::Type::Boolean

              # @!attribute pay_frequencies
              #
              #   @return [Boolean, nil]
              optional :pay_frequencies, FinchAPI::Internal::Type::Boolean

              # @!method initialize(id: nil, individual_ids: nil, name: nil, pay_frequencies: nil)
              #   @param id [Boolean]
              #   @param individual_ids [Boolean]
              #   @param name [Boolean]
              #   @param pay_frequencies [Boolean]
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#pay_statement
            class PayStatement < FinchAPI::Internal::Type::BaseModel
              # @!attribute paging
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging, nil]
              optional :paging,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging
                       }

              # @!attribute pay_statements
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements, nil]
              optional :pay_statements,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
                       }

              # @!method initialize(paging: nil, pay_statements: nil)
              #   @param paging [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging]
              #   @param pay_statements [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements]

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement#paging
              class Paging < FinchAPI::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Boolean]
                required :count, FinchAPI::Internal::Type::Boolean

                # @!attribute offset
                #
                #   @return [Boolean]
                required :offset, FinchAPI::Internal::Type::Boolean

                # @!method initialize(count:, offset:)
                #   @param count [Boolean]
                #   @param offset [Boolean]
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement#pay_statements
              class PayStatements < FinchAPI::Internal::Type::BaseModel
                # @!attribute earnings
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings, nil]
                optional :earnings,
                         -> {
                           FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings
                         }

                # @!attribute employee_deductions
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions, nil]
                optional :employee_deductions,
                         -> {
                           FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions
                         }

                # @!attribute employer_contributions
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions, nil]
                optional :employer_contributions,
                         -> {
                           FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions
                         }

                # @!attribute gross_pay
                #
                #   @return [Boolean, nil]
                optional :gross_pay, FinchAPI::Internal::Type::Boolean

                # @!attribute individual_id
                #
                #   @return [Boolean, nil]
                optional :individual_id, FinchAPI::Internal::Type::Boolean

                # @!attribute net_pay
                #
                #   @return [Boolean, nil]
                optional :net_pay, FinchAPI::Internal::Type::Boolean

                # @!attribute payment_method
                #
                #   @return [Boolean, nil]
                optional :payment_method, FinchAPI::Internal::Type::Boolean

                # @!attribute taxes
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes, nil]
                optional :taxes,
                         -> {
                           FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes
                         }

                # @!attribute total_hours
                #
                #   @return [Boolean, nil]
                optional :total_hours, FinchAPI::Internal::Type::Boolean

                # @!attribute type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::Boolean

                # @!method initialize(earnings: nil, employee_deductions: nil, employer_contributions: nil, gross_pay: nil, individual_id: nil, net_pay: nil, payment_method: nil, taxes: nil, total_hours: nil, type: nil)
                #   @param earnings [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings]
                #   @param employee_deductions [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions]
                #   @param employer_contributions [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions]
                #   @param gross_pay [Boolean]
                #   @param individual_id [Boolean]
                #   @param net_pay [Boolean]
                #   @param payment_method [Boolean]
                #   @param taxes [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes]
                #   @param total_hours [Boolean]
                #   @param type [Boolean]

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#earnings
                class Earnings < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::Boolean

                  # @!attribute currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::Boolean

                  # @!attribute name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::Boolean

                  # @!attribute type
                  #
                  #   @return [Boolean, nil]
                  optional :type, FinchAPI::Internal::Type::Boolean

                  # @!method initialize(amount: nil, currency: nil, name: nil, type: nil)
                  #   @param amount [Boolean]
                  #   @param currency [Boolean]
                  #   @param name [Boolean]
                  #   @param type [Boolean]
                end

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#employee_deductions
                class EmployeeDeductions < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::Boolean

                  # @!attribute currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::Boolean

                  # @!attribute name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::Boolean

                  # @!attribute pre_tax
                  #
                  #   @return [Boolean, nil]
                  optional :pre_tax, FinchAPI::Internal::Type::Boolean

                  # @!attribute type
                  #
                  #   @return [Boolean, nil]
                  optional :type, FinchAPI::Internal::Type::Boolean

                  # @!method initialize(amount: nil, currency: nil, name: nil, pre_tax: nil, type: nil)
                  #   @param amount [Boolean]
                  #   @param currency [Boolean]
                  #   @param name [Boolean]
                  #   @param pre_tax [Boolean]
                  #   @param type [Boolean]
                end

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#employer_contributions
                class EmployerContributions < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::Boolean

                  # @!attribute currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::Boolean

                  # @!attribute name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::Boolean

                  # @!method initialize(amount: nil, currency: nil, name: nil)
                  #   @param amount [Boolean]
                  #   @param currency [Boolean]
                  #   @param name [Boolean]
                end

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#taxes
                class Taxes < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::Boolean

                  # @!attribute currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::Boolean

                  # @!attribute employer
                  #
                  #   @return [Boolean, nil]
                  optional :employer, FinchAPI::Internal::Type::Boolean

                  # @!attribute name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::Boolean

                  # @!attribute type
                  #
                  #   @return [Boolean, nil]
                  optional :type, FinchAPI::Internal::Type::Boolean

                  # @!method initialize(amount: nil, currency: nil, employer: nil, name: nil, type: nil)
                  #   @param amount [Boolean]
                  #   @param currency [Boolean]
                  #   @param employer [Boolean]
                  #   @param name [Boolean]
                  #   @param type [Boolean]
                end
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#payment
            class Payment < FinchAPI::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::Boolean

              # @!attribute company_debit
              #
              #   @return [Boolean, nil]
              optional :company_debit, FinchAPI::Internal::Type::Boolean

              # @!attribute debit_date
              #
              #   @return [Boolean, nil]
              optional :debit_date, FinchAPI::Internal::Type::Boolean

              # @!attribute employee_taxes
              #
              #   @return [Boolean, nil]
              optional :employee_taxes, FinchAPI::Internal::Type::Boolean

              # @!attribute employer_taxes
              #
              #   @return [Boolean, nil]
              optional :employer_taxes, FinchAPI::Internal::Type::Boolean

              # @!attribute gross_pay
              #
              #   @return [Boolean, nil]
              optional :gross_pay, FinchAPI::Internal::Type::Boolean

              # @!attribute individual_ids
              #
              #   @return [Boolean, nil]
              optional :individual_ids, FinchAPI::Internal::Type::Boolean

              # @!attribute net_pay
              #
              #   @return [Boolean, nil]
              optional :net_pay, FinchAPI::Internal::Type::Boolean

              # @!attribute pay_date
              #
              #   @return [Boolean, nil]
              optional :pay_date, FinchAPI::Internal::Type::Boolean

              # @!attribute pay_frequencies
              #
              #   @return [Boolean, nil]
              optional :pay_frequencies, FinchAPI::Internal::Type::Boolean

              # @!attribute pay_group_ids
              #
              #   @return [Boolean, nil]
              optional :pay_group_ids, FinchAPI::Internal::Type::Boolean

              # @!attribute pay_period
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod, nil]
              optional :pay_period,
                       -> {
                         FinchAPI::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod
                       }

              # @!method initialize(id: nil, company_debit: nil, debit_date: nil, employee_taxes: nil, employer_taxes: nil, gross_pay: nil, individual_ids: nil, net_pay: nil, pay_date: nil, pay_frequencies: nil, pay_group_ids: nil, pay_period: nil)
              #   @param id [Boolean]
              #   @param company_debit [Boolean]
              #   @param debit_date [Boolean]
              #   @param employee_taxes [Boolean]
              #   @param employer_taxes [Boolean]
              #   @param gross_pay [Boolean]
              #   @param individual_ids [Boolean]
              #   @param net_pay [Boolean]
              #   @param pay_date [Boolean]
              #   @param pay_frequencies [Boolean]
              #   @param pay_group_ids [Boolean]
              #   @param pay_period [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod]

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment#pay_period
              class PayPeriod < FinchAPI::Internal::Type::BaseModel
                # @!attribute end_date
                #
                #   @return [Boolean, nil]
                optional :end_date, FinchAPI::Internal::Type::Boolean

                # @!attribute start_date
                #
                #   @return [Boolean, nil]
                optional :start_date, FinchAPI::Internal::Type::Boolean

                # @!method initialize(end_date: nil, start_date: nil)
                #   @param end_date [Boolean]
                #   @param start_date [Boolean]
              end
            end
          end

          # The type of authentication method.
          #
          # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            ASSISTED = :assisted
            CREDENTIAL = :credential
            API_TOKEN = :api_token
            API_CREDENTIAL = :api_credential
            OAUTH = :oauth

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        ACCOUNT_UPDATED = :"account.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
