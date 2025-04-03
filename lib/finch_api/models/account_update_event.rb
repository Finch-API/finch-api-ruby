# frozen_string_literal: true

module FinchAPI
  module Models
    class AccountUpdateEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::AccountUpdateEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::AccountUpdateEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::AccountUpdateEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::AccountUpdateEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::AccountUpdateEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::AccountUpdateEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::AccountUpdateEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::AccountUpdateEvent::EventType]
      #   #
      #   def initialize(data: nil, event_type: nil, **) = super

      # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

      class Data < FinchAPI::Internal::Type::BaseModel
        # @!attribute authentication_method
        #
        #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod]
        required :authentication_method, -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod }

        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::ConnectionStatusType]
        required :status, enum: -> { FinchAPI::Models::ConnectionStatusType }

        # @!parse
        #   # @param authentication_method [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod]
        #   # @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
        #   #
        #   def initialize(authentication_method:, status:, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # @see FinchAPI::Models::AccountUpdateEvent::Data#authentication_method
        class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
          # @!attribute benefits_support
          #   Each benefit type and their supported features. If the benefit type is not
          #     supported, the property will be null
          #
          #   @return [FinchAPI::Models::HRIS::BenefitsSupport, nil]
          optional :benefits_support, -> { FinchAPI::Models::HRIS::BenefitsSupport }, nil?: true

          # @!attribute supported_fields
          #   The supported data fields returned by our HR and payroll endpoints
          #
          #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields, nil]
          optional :supported_fields,
                   -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields },
                   nil?: true

          # @!attribute [r] type
          #   The type of authentication method.
          #
          #   @return [Symbol, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type }

          # @!parse
          #   # @return [Symbol, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type]
          #   attr_writer :type

          # @!parse
          #   # @param benefits_support [FinchAPI::Models::HRIS::BenefitsSupport, nil]
          #   # @param supported_fields [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields, nil]
          #   # @param type [Symbol, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type]
          #   #
          #   def initialize(benefits_support: nil, supported_fields: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod#supported_fields
          class SupportedFields < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] company
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company, nil]
            optional :company,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company]
            #   attr_writer :company

            # @!attribute [r] directory
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory, nil]
            optional :directory,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory]
            #   attr_writer :directory

            # @!attribute [r] employment
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment, nil]
            optional :employment,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment]
            #   attr_writer :employment

            # @!attribute [r] individual
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual, nil]
            optional :individual,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual]
            #   attr_writer :individual

            # @!attribute [r] pay_group
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup, nil]
            optional :pay_group,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup]
            #   attr_writer :pay_group

            # @!attribute [r] pay_statement
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement, nil]
            optional :pay_statement,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement]
            #   attr_writer :pay_statement

            # @!attribute [r] payment
            #
            #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment, nil]
            optional :payment,
                     -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment }

            # @!parse
            #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment]
            #   attr_writer :payment

            # @!parse
            #   # The supported data fields returned by our HR and payroll endpoints
            #   #
            #   # @param company [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company]
            #   # @param directory [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory]
            #   # @param employment [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment]
            #   # @param individual [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual]
            #   # @param pay_group [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup]
            #   # @param pay_statement [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement]
            #   # @param payment [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment]
            #   #
            #   def initialize(
            #     company: nil,
            #     directory: nil,
            #     employment: nil,
            #     individual: nil,
            #     pay_group: nil,
            #     pay_statement: nil,
            #     payment: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#company
            class Company < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :id

              # @!attribute [r] accounts
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts, nil]
              optional :accounts,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts]
              #   attr_writer :accounts

              # @!attribute [r] departments
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments, nil]
              optional :departments,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments]
              #   attr_writer :departments

              # @!attribute [r] ein
              #
              #   @return [Boolean, nil]
              optional :ein, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :ein

              # @!attribute [r] entity
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity, nil]
              optional :entity,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity]
              #   attr_writer :entity

              # @!attribute [r] legal_name
              #
              #   @return [Boolean, nil]
              optional :legal_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :legal_name

              # @!attribute [r] locations
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations, nil]
              optional :locations,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations]
              #   attr_writer :locations

              # @!attribute [r] primary_email
              #
              #   @return [Boolean, nil]
              optional :primary_email, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :primary_email

              # @!attribute [r] primary_phone_number
              #
              #   @return [Boolean, nil]
              optional :primary_phone_number, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :primary_phone_number

              # @!parse
              #   # @param id [Boolean]
              #   # @param accounts [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts]
              #   # @param departments [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments]
              #   # @param ein [Boolean]
              #   # @param entity [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity]
              #   # @param legal_name [Boolean]
              #   # @param locations [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations]
              #   # @param primary_email [Boolean]
              #   # @param primary_phone_number [Boolean]
              #   #
              #   def initialize(
              #     id: nil,
              #     accounts: nil,
              #     departments: nil,
              #     ein: nil,
              #     entity: nil,
              #     legal_name: nil,
              #     locations: nil,
              #     primary_email: nil,
              #     primary_phone_number: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#accounts
              class Accounts < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] account_name
                #
                #   @return [Boolean, nil]
                optional :account_name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :account_name

                # @!attribute [r] account_number
                #
                #   @return [Boolean, nil]
                optional :account_number, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :account_number

                # @!attribute [r] account_type
                #
                #   @return [Boolean, nil]
                optional :account_type, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :account_type

                # @!attribute [r] institution_name
                #
                #   @return [Boolean, nil]
                optional :institution_name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :institution_name

                # @!attribute [r] routing_number
                #
                #   @return [Boolean, nil]
                optional :routing_number, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :routing_number

                # @!parse
                #   # @param account_name [Boolean]
                #   # @param account_number [Boolean]
                #   # @param account_type [Boolean]
                #   # @param institution_name [Boolean]
                #   # @param routing_number [Boolean]
                #   #
                #   def initialize(account_name: nil, account_number: nil, account_type: nil, institution_name: nil, routing_number: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#departments
              class Departments < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] name
                #
                #   @return [Boolean, nil]
                optional :name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :name

                # @!attribute [r] parent
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent, nil]
                optional :parent,
                         -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent }

                # @!parse
                #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent]
                #   attr_writer :parent

                # @!parse
                #   # @param name [Boolean]
                #   # @param parent [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent]
                #   #
                #   def initialize(name: nil, parent: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments#parent
                class Parent < FinchAPI::Internal::Type::BaseModel
                  # @!attribute [r] name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :name

                  # @!parse
                  #   # @param name [Boolean]
                  #   #
                  #   def initialize(name: nil, **) = super

                  # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
                end
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#entity
              class Entity < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] subtype
                #
                #   @return [Boolean, nil]
                optional :subtype, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :subtype

                # @!attribute [r] type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :type

                # @!parse
                #   # @param subtype [Boolean]
                #   # @param type [Boolean]
                #   #
                #   def initialize(subtype: nil, type: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company#locations
              class Locations < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] city
                #
                #   @return [Boolean, nil]
                optional :city, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :city

                # @!attribute [r] country
                #
                #   @return [Boolean, nil]
                optional :country, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :country

                # @!attribute [r] line1
                #
                #   @return [Boolean, nil]
                optional :line1, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :line1

                # @!attribute [r] line2
                #
                #   @return [Boolean, nil]
                optional :line2, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :line2

                # @!attribute [r] postal_code
                #
                #   @return [Boolean, nil]
                optional :postal_code, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :postal_code

                # @!attribute [r] state
                #
                #   @return [Boolean, nil]
                optional :state, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :state

                # @!parse
                #   # @param city [Boolean]
                #   # @param country [Boolean]
                #   # @param line1 [Boolean]
                #   # @param line2 [Boolean]
                #   # @param postal_code [Boolean]
                #   # @param state [Boolean]
                #   #
                #   def initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#directory
            class Directory < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] individuals
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals, nil]
              optional :individuals,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals]
              #   attr_writer :individuals

              # @!attribute [r] paging
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging, nil]
              optional :paging,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging]
              #   attr_writer :paging

              # @!parse
              #   # @param individuals [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals]
              #   # @param paging [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging]
              #   #
              #   def initialize(individuals: nil, paging: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory#individuals
              class Individuals < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] id
                #
                #   @return [Boolean, nil]
                optional :id, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :id

                # @!attribute [r] department
                #
                #   @return [Boolean, nil]
                optional :department, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :department

                # @!attribute [r] first_name
                #
                #   @return [Boolean, nil]
                optional :first_name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :first_name

                # @!attribute [r] is_active
                #
                #   @return [Boolean, nil]
                optional :is_active, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :is_active

                # @!attribute [r] last_name
                #
                #   @return [Boolean, nil]
                optional :last_name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :last_name

                # @!attribute [r] manager
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager, nil]
                optional :manager,
                         -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager }

                # @!parse
                #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager]
                #   attr_writer :manager

                # @!attribute [r] middle_name
                #
                #   @return [Boolean, nil]
                optional :middle_name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :middle_name

                # @!parse
                #   # @param id [Boolean]
                #   # @param department [Boolean]
                #   # @param first_name [Boolean]
                #   # @param is_active [Boolean]
                #   # @param last_name [Boolean]
                #   # @param manager [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager]
                #   # @param middle_name [Boolean]
                #   #
                #   def initialize(
                #     id: nil,
                #     department: nil,
                #     first_name: nil,
                #     is_active: nil,
                #     last_name: nil,
                #     manager: nil,
                #     middle_name: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals#manager
                class Manager < FinchAPI::Internal::Type::BaseModel
                  # @!attribute [r] id
                  #
                  #   @return [Boolean, nil]
                  optional :id, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :id

                  # @!parse
                  #   # @param id [Boolean]
                  #   #
                  #   def initialize(id: nil, **) = super

                  # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
                end
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory#paging
              class Paging < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] count
                #
                #   @return [Boolean, nil]
                optional :count, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :count

                # @!attribute [r] offset
                #
                #   @return [Boolean, nil]
                optional :offset, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :offset

                # @!parse
                #   # @param count [Boolean]
                #   # @param offset [Boolean]
                #   #
                #   def initialize(count: nil, offset: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#employment
            class Employment < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :id

              # @!attribute [r] class_code
              #
              #   @return [Boolean, nil]
              optional :class_code, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :class_code

              # @!attribute [r] custom_fields
              #
              #   @return [Boolean, nil]
              optional :custom_fields, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :custom_fields

              # @!attribute [r] department
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department, nil]
              optional :department,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department]
              #   attr_writer :department

              # @!attribute [r] employment
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment, nil]
              optional :employment,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment]
              #   attr_writer :employment

              # @!attribute [r] employment_status
              #
              #   @return [Boolean, nil]
              optional :employment_status, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :employment_status

              # @!attribute [r] end_date
              #
              #   @return [Boolean, nil]
              optional :end_date, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :end_date

              # @!attribute [r] first_name
              #
              #   @return [Boolean, nil]
              optional :first_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :first_name

              # @!attribute [r] income
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income, nil]
              optional :income,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income]
              #   attr_writer :income

              # @!attribute [r] income_history
              #
              #   @return [Boolean, nil]
              optional :income_history, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :income_history

              # @!attribute [r] is_active
              #
              #   @return [Boolean, nil]
              optional :is_active, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :is_active

              # @!attribute [r] last_name
              #
              #   @return [Boolean, nil]
              optional :last_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :last_name

              # @!attribute [r] location
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location, nil]
              optional :location,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location]
              #   attr_writer :location

              # @!attribute [r] manager
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager, nil]
              optional :manager,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager]
              #   attr_writer :manager

              # @!attribute [r] middle_name
              #
              #   @return [Boolean, nil]
              optional :middle_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :middle_name

              # @!attribute [r] start_date
              #
              #   @return [Boolean, nil]
              optional :start_date, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :start_date

              # @!attribute [r] title
              #
              #   @return [Boolean, nil]
              optional :title, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :title

              # @!parse
              #   # @param id [Boolean]
              #   # @param class_code [Boolean]
              #   # @param custom_fields [Boolean]
              #   # @param department [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department]
              #   # @param employment [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment]
              #   # @param employment_status [Boolean]
              #   # @param end_date [Boolean]
              #   # @param first_name [Boolean]
              #   # @param income [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income]
              #   # @param income_history [Boolean]
              #   # @param is_active [Boolean]
              #   # @param last_name [Boolean]
              #   # @param location [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location]
              #   # @param manager [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager]
              #   # @param middle_name [Boolean]
              #   # @param start_date [Boolean]
              #   # @param title [Boolean]
              #   #
              #   def initialize(
              #     id: nil,
              #     class_code: nil,
              #     custom_fields: nil,
              #     department: nil,
              #     employment: nil,
              #     employment_status: nil,
              #     end_date: nil,
              #     first_name: nil,
              #     income: nil,
              #     income_history: nil,
              #     is_active: nil,
              #     last_name: nil,
              #     location: nil,
              #     manager: nil,
              #     middle_name: nil,
              #     start_date: nil,
              #     title: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#department
              class Department < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] name
                #
                #   @return [Boolean, nil]
                optional :name, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :name

                # @!parse
                #   # @param name [Boolean]
                #   #
                #   def initialize(name: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#employment
              class Employment < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] subtype
                #
                #   @return [Boolean, nil]
                optional :subtype, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :subtype

                # @!attribute [r] type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :type

                # @!parse
                #   # @param subtype [Boolean]
                #   # @param type [Boolean]
                #   #
                #   def initialize(subtype: nil, type: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#income
              class Income < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] amount
                #
                #   @return [Boolean, nil]
                optional :amount, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :amount

                # @!attribute [r] currency
                #
                #   @return [Boolean, nil]
                optional :currency, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :currency

                # @!attribute [r] unit
                #
                #   @return [Boolean, nil]
                optional :unit, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :unit

                # @!parse
                #   # @param amount [Boolean]
                #   # @param currency [Boolean]
                #   # @param unit [Boolean]
                #   #
                #   def initialize(amount: nil, currency: nil, unit: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#location
              class Location < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] city
                #
                #   @return [Boolean, nil]
                optional :city, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :city

                # @!attribute [r] country
                #
                #   @return [Boolean, nil]
                optional :country, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :country

                # @!attribute [r] line1
                #
                #   @return [Boolean, nil]
                optional :line1, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :line1

                # @!attribute [r] line2
                #
                #   @return [Boolean, nil]
                optional :line2, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :line2

                # @!attribute [r] postal_code
                #
                #   @return [Boolean, nil]
                optional :postal_code, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :postal_code

                # @!attribute [r] state
                #
                #   @return [Boolean, nil]
                optional :state, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :state

                # @!parse
                #   # @param city [Boolean]
                #   # @param country [Boolean]
                #   # @param line1 [Boolean]
                #   # @param line2 [Boolean]
                #   # @param postal_code [Boolean]
                #   # @param state [Boolean]
                #   #
                #   def initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment#manager
              class Manager < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] id
                #
                #   @return [Boolean, nil]
                optional :id, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :id

                # @!parse
                #   # @param id [Boolean]
                #   #
                #   def initialize(id: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#individual
            class Individual < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :id

              # @!attribute [r] dob
              #
              #   @return [Boolean, nil]
              optional :dob, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :dob

              # @!attribute [r] emails
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails, nil]
              optional :emails,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails]
              #   attr_writer :emails

              # @!attribute [r] encrypted_ssn
              #
              #   @return [Boolean, nil]
              optional :encrypted_ssn, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :encrypted_ssn

              # @!attribute [r] ethnicity
              #
              #   @return [Boolean, nil]
              optional :ethnicity, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :ethnicity

              # @!attribute [r] first_name
              #
              #   @return [Boolean, nil]
              optional :first_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :first_name

              # @!attribute [r] gender
              #
              #   @return [Boolean, nil]
              optional :gender, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :gender

              # @!attribute [r] last_name
              #
              #   @return [Boolean, nil]
              optional :last_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :last_name

              # @!attribute [r] middle_name
              #
              #   @return [Boolean, nil]
              optional :middle_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :middle_name

              # @!attribute [r] phone_numbers
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers, nil]
              optional :phone_numbers,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers]
              #   attr_writer :phone_numbers

              # @!attribute [r] preferred_name
              #
              #   @return [Boolean, nil]
              optional :preferred_name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :preferred_name

              # @!attribute [r] residence
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence, nil]
              optional :residence,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence]
              #   attr_writer :residence

              # @!attribute [r] ssn
              #
              #   @return [Boolean, nil]
              optional :ssn, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :ssn

              # @!parse
              #   # @param id [Boolean]
              #   # @param dob [Boolean]
              #   # @param emails [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails]
              #   # @param encrypted_ssn [Boolean]
              #   # @param ethnicity [Boolean]
              #   # @param first_name [Boolean]
              #   # @param gender [Boolean]
              #   # @param last_name [Boolean]
              #   # @param middle_name [Boolean]
              #   # @param phone_numbers [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers]
              #   # @param preferred_name [Boolean]
              #   # @param residence [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence]
              #   # @param ssn [Boolean]
              #   #
              #   def initialize(
              #     id: nil,
              #     dob: nil,
              #     emails: nil,
              #     encrypted_ssn: nil,
              #     ethnicity: nil,
              #     first_name: nil,
              #     gender: nil,
              #     last_name: nil,
              #     middle_name: nil,
              #     phone_numbers: nil,
              #     preferred_name: nil,
              #     residence: nil,
              #     ssn: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual#emails
              class Emails < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] data
                #
                #   @return [Boolean, nil]
                optional :data, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :data

                # @!attribute [r] type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :type

                # @!parse
                #   # @param data [Boolean]
                #   # @param type [Boolean]
                #   #
                #   def initialize(data: nil, type: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual#phone_numbers
              class PhoneNumbers < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] data
                #
                #   @return [Boolean, nil]
                optional :data, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :data

                # @!attribute [r] type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :type

                # @!parse
                #   # @param data [Boolean]
                #   # @param type [Boolean]
                #   #
                #   def initialize(data: nil, type: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual#residence
              class Residence < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] city
                #
                #   @return [Boolean, nil]
                optional :city, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :city

                # @!attribute [r] country
                #
                #   @return [Boolean, nil]
                optional :country, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :country

                # @!attribute [r] line1
                #
                #   @return [Boolean, nil]
                optional :line1, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :line1

                # @!attribute [r] line2
                #
                #   @return [Boolean, nil]
                optional :line2, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :line2

                # @!attribute [r] postal_code
                #
                #   @return [Boolean, nil]
                optional :postal_code, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :postal_code

                # @!attribute [r] state
                #
                #   @return [Boolean, nil]
                optional :state, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :state

                # @!parse
                #   # @param city [Boolean]
                #   # @param country [Boolean]
                #   # @param line1 [Boolean]
                #   # @param line2 [Boolean]
                #   # @param postal_code [Boolean]
                #   # @param state [Boolean]
                #   #
                #   def initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#pay_group
            class PayGroup < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :id

              # @!attribute [r] individual_ids
              #
              #   @return [Boolean, nil]
              optional :individual_ids, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :individual_ids

              # @!attribute [r] name
              #
              #   @return [Boolean, nil]
              optional :name, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :name

              # @!attribute [r] pay_frequencies
              #
              #   @return [Boolean, nil]
              optional :pay_frequencies, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :pay_frequencies

              # @!parse
              #   # @param id [Boolean]
              #   # @param individual_ids [Boolean]
              #   # @param name [Boolean]
              #   # @param pay_frequencies [Boolean]
              #   #
              #   def initialize(id: nil, individual_ids: nil, name: nil, pay_frequencies: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#pay_statement
            class PayStatement < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] paging
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging, nil]
              optional :paging,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging]
              #   attr_writer :paging

              # @!attribute [r] pay_statements
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements, nil]
              optional :pay_statements,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements]
              #   attr_writer :pay_statements

              # @!parse
              #   # @param paging [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging]
              #   # @param pay_statements [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements]
              #   #
              #   def initialize(paging: nil, pay_statements: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement#paging
              class Paging < FinchAPI::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Boolean]
                required :count, FinchAPI::Internal::Type::BooleanModel

                # @!attribute offset
                #
                #   @return [Boolean]
                required :offset, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @param count [Boolean]
                #   # @param offset [Boolean]
                #   #
                #   def initialize(count:, offset:, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
              end

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement#pay_statements
              class PayStatements < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] earnings
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings, nil]
                optional :earnings,
                         -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings }

                # @!parse
                #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings]
                #   attr_writer :earnings

                # @!attribute [r] employee_deductions
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions, nil]
                optional :employee_deductions,
                         -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions }

                # @!parse
                #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions]
                #   attr_writer :employee_deductions

                # @!attribute [r] employer_contributions
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions, nil]
                optional :employer_contributions,
                         -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions }

                # @!parse
                #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions]
                #   attr_writer :employer_contributions

                # @!attribute [r] gross_pay
                #
                #   @return [Boolean, nil]
                optional :gross_pay, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :gross_pay

                # @!attribute [r] individual_id
                #
                #   @return [Boolean, nil]
                optional :individual_id, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :individual_id

                # @!attribute [r] net_pay
                #
                #   @return [Boolean, nil]
                optional :net_pay, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :net_pay

                # @!attribute [r] payment_method
                #
                #   @return [Boolean, nil]
                optional :payment_method, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :payment_method

                # @!attribute [r] taxes
                #
                #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes, nil]
                optional :taxes,
                         -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes }

                # @!parse
                #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes]
                #   attr_writer :taxes

                # @!attribute [r] total_hours
                #
                #   @return [Boolean, nil]
                optional :total_hours, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :total_hours

                # @!attribute [r] type
                #
                #   @return [Boolean, nil]
                optional :type, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :type

                # @!parse
                #   # @param earnings [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings]
                #   # @param employee_deductions [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions]
                #   # @param employer_contributions [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions]
                #   # @param gross_pay [Boolean]
                #   # @param individual_id [Boolean]
                #   # @param net_pay [Boolean]
                #   # @param payment_method [Boolean]
                #   # @param taxes [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes]
                #   # @param total_hours [Boolean]
                #   # @param type [Boolean]
                #   #
                #   def initialize(
                #     earnings: nil,
                #     employee_deductions: nil,
                #     employer_contributions: nil,
                #     gross_pay: nil,
                #     individual_id: nil,
                #     net_pay: nil,
                #     payment_method: nil,
                #     taxes: nil,
                #     total_hours: nil,
                #     type: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#earnings
                class Earnings < FinchAPI::Internal::Type::BaseModel
                  # @!attribute [r] amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :amount

                  # @!attribute [r] currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :currency

                  # @!attribute [r] name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :name

                  # @!attribute [r] type
                  #
                  #   @return [Boolean, nil]
                  optional :type, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :type

                  # @!parse
                  #   # @param amount [Boolean]
                  #   # @param currency [Boolean]
                  #   # @param name [Boolean]
                  #   # @param type [Boolean]
                  #   #
                  #   def initialize(amount: nil, currency: nil, name: nil, type: nil, **) = super

                  # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
                end

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#employee_deductions
                class EmployeeDeductions < FinchAPI::Internal::Type::BaseModel
                  # @!attribute [r] amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :amount

                  # @!attribute [r] currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :currency

                  # @!attribute [r] name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :name

                  # @!attribute [r] pre_tax
                  #
                  #   @return [Boolean, nil]
                  optional :pre_tax, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :pre_tax

                  # @!attribute [r] type
                  #
                  #   @return [Boolean, nil]
                  optional :type, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :type

                  # @!parse
                  #   # @param amount [Boolean]
                  #   # @param currency [Boolean]
                  #   # @param name [Boolean]
                  #   # @param pre_tax [Boolean]
                  #   # @param type [Boolean]
                  #   #
                  #   def initialize(amount: nil, currency: nil, name: nil, pre_tax: nil, type: nil, **) = super

                  # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
                end

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#employer_contributions
                class EmployerContributions < FinchAPI::Internal::Type::BaseModel
                  # @!attribute [r] amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :amount

                  # @!attribute [r] currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :currency

                  # @!attribute [r] name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :name

                  # @!parse
                  #   # @param amount [Boolean]
                  #   # @param currency [Boolean]
                  #   # @param name [Boolean]
                  #   #
                  #   def initialize(amount: nil, currency: nil, name: nil, **) = super

                  # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
                end

                # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements#taxes
                class Taxes < FinchAPI::Internal::Type::BaseModel
                  # @!attribute [r] amount
                  #
                  #   @return [Boolean, nil]
                  optional :amount, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :amount

                  # @!attribute [r] currency
                  #
                  #   @return [Boolean, nil]
                  optional :currency, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :currency

                  # @!attribute [r] employer
                  #
                  #   @return [Boolean, nil]
                  optional :employer, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :employer

                  # @!attribute [r] name
                  #
                  #   @return [Boolean, nil]
                  optional :name, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :name

                  # @!attribute [r] type
                  #
                  #   @return [Boolean, nil]
                  optional :type, FinchAPI::Internal::Type::BooleanModel

                  # @!parse
                  #   # @return [Boolean]
                  #   attr_writer :type

                  # @!parse
                  #   # @param amount [Boolean]
                  #   # @param currency [Boolean]
                  #   # @param employer [Boolean]
                  #   # @param name [Boolean]
                  #   # @param type [Boolean]
                  #   #
                  #   def initialize(amount: nil, currency: nil, employer: nil, name: nil, type: nil, **) = super

                  # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
                end
              end
            end

            # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields#payment
            class Payment < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] id
              #
              #   @return [Boolean, nil]
              optional :id, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :id

              # @!attribute [r] company_debit
              #
              #   @return [Boolean, nil]
              optional :company_debit, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :company_debit

              # @!attribute [r] debit_date
              #
              #   @return [Boolean, nil]
              optional :debit_date, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :debit_date

              # @!attribute [r] employee_taxes
              #
              #   @return [Boolean, nil]
              optional :employee_taxes, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :employee_taxes

              # @!attribute [r] employer_taxes
              #
              #   @return [Boolean, nil]
              optional :employer_taxes, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :employer_taxes

              # @!attribute [r] gross_pay
              #
              #   @return [Boolean, nil]
              optional :gross_pay, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :gross_pay

              # @!attribute [r] individual_ids
              #
              #   @return [Boolean, nil]
              optional :individual_ids, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :individual_ids

              # @!attribute [r] net_pay
              #
              #   @return [Boolean, nil]
              optional :net_pay, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :net_pay

              # @!attribute [r] pay_date
              #
              #   @return [Boolean, nil]
              optional :pay_date, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :pay_date

              # @!attribute [r] pay_frequencies
              #
              #   @return [Boolean, nil]
              optional :pay_frequencies, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :pay_frequencies

              # @!attribute [r] pay_group_ids
              #
              #   @return [Boolean, nil]
              optional :pay_group_ids, FinchAPI::Internal::Type::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :pay_group_ids

              # @!attribute [r] pay_period
              #
              #   @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod, nil]
              optional :pay_period,
                       -> { FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod }

              # @!parse
              #   # @return [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod]
              #   attr_writer :pay_period

              # @!parse
              #   # @param id [Boolean]
              #   # @param company_debit [Boolean]
              #   # @param debit_date [Boolean]
              #   # @param employee_taxes [Boolean]
              #   # @param employer_taxes [Boolean]
              #   # @param gross_pay [Boolean]
              #   # @param individual_ids [Boolean]
              #   # @param net_pay [Boolean]
              #   # @param pay_date [Boolean]
              #   # @param pay_frequencies [Boolean]
              #   # @param pay_group_ids [Boolean]
              #   # @param pay_period [FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod]
              #   #
              #   def initialize(
              #     id: nil,
              #     company_debit: nil,
              #     debit_date: nil,
              #     employee_taxes: nil,
              #     employer_taxes: nil,
              #     gross_pay: nil,
              #     individual_ids: nil,
              #     net_pay: nil,
              #     pay_date: nil,
              #     pay_frequencies: nil,
              #     pay_group_ids: nil,
              #     pay_period: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # @see FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment#pay_period
              class PayPeriod < FinchAPI::Internal::Type::BaseModel
                # @!attribute [r] end_date
                #
                #   @return [Boolean, nil]
                optional :end_date, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :end_date

                # @!attribute [r] start_date
                #
                #   @return [Boolean, nil]
                optional :start_date, FinchAPI::Internal::Type::BooleanModel

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :start_date

                # @!parse
                #   # @param end_date [Boolean]
                #   # @param start_date [Boolean]
                #   #
                #   def initialize(end_date: nil, start_date: nil, **) = super

                # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        ACCOUNT_UPDATED = :"account.updated"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
