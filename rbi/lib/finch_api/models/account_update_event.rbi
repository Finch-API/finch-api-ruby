# typed: strong

module FinchAPI
  module Models
    class AccountUpdateEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::AccountUpdateEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::AccountUpdateEvent::Data, FinchAPI::Internal::Util::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::AccountUpdateEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::AccountUpdateEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::AccountUpdateEvent::Data, FinchAPI::Internal::Util::AnyHash),
          event_type: FinchAPI::Models::AccountUpdateEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::AccountUpdateEvent::Data,
              event_type: FinchAPI::Models::AccountUpdateEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        sig { returns(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod) }
        attr_reader :authentication_method

        sig do
          params(
            authentication_method: T.any(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod, FinchAPI::Internal::Util::AnyHash)
          )
            .void
        end
        attr_writer :authentication_method

        sig { returns(FinchAPI::Models::ConnectionStatusType::TaggedSymbol) }
        attr_accessor :status

        sig do
          params(
            authentication_method: T.any(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod, FinchAPI::Internal::Util::AnyHash),
            status: FinchAPI::Models::ConnectionStatusType::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(authentication_method:, status:)
        end

        sig do
          override
            .returns(
              {
                authentication_method: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod,
                status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        class AuthenticationMethod < FinchAPI::BaseModel
          # Each benefit type and their supported features. If the benefit type is not
          #   supported, the property will be null
          sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitsSupport)) }
          attr_reader :benefits_support

          sig do
            params(
              benefits_support: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitsSupport, FinchAPI::Internal::Util::AnyHash))
            )
              .void
          end
          attr_writer :benefits_support

          # The supported data fields returned by our HR and payroll endpoints
          sig { returns(T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields)) }
          attr_reader :supported_fields

          sig do
            params(
              supported_fields: T.nilable(
                T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
            )
              .void
          end
          attr_writer :supported_fields

          # The type of authentication method.
          sig { returns(T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol)) }
          attr_reader :type

          sig { params(type: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::OrSymbol).void }
          attr_writer :type

          sig do
            params(
              benefits_support: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitsSupport, FinchAPI::Internal::Util::AnyHash)),
              supported_fields: T.nilable(
                T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields,
                  FinchAPI::Internal::Util::AnyHash
                )
              ),
              type: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(benefits_support: nil, supported_fields: nil, type: nil)
          end

          sig do
            override
              .returns(
                {
                  benefits_support: T.nilable(FinchAPI::Models::HRIS::BenefitsSupport),
                  supported_fields: T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields),
                  type: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class SupportedFields < FinchAPI::BaseModel
            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company)
              )
            end
            attr_reader :company

            sig do
              params(
                company: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :company

            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory)
              )
            end
            attr_reader :directory

            sig do
              params(
                directory: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :directory

            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment)
              )
            end
            attr_reader :employment

            sig do
              params(
                employment: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :employment

            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual)
              )
            end
            attr_reader :individual

            sig do
              params(
                individual: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :individual

            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup)
              )
            end
            attr_reader :pay_group

            sig do
              params(
                pay_group: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :pay_group

            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement)
              )
            end
            attr_reader :pay_statement

            sig do
              params(
                pay_statement: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :pay_statement

            sig do
              returns(
                T.nilable(FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment)
              )
            end
            attr_reader :payment

            sig do
              params(
                payment: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :payment

            # The supported data fields returned by our HR and payroll endpoints
            sig do
              params(
                company: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company,
                  FinchAPI::Internal::Util::AnyHash
                ),
                directory: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory,
                  FinchAPI::Internal::Util::AnyHash
                ),
                employment: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment,
                  FinchAPI::Internal::Util::AnyHash
                ),
                individual: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual,
                  FinchAPI::Internal::Util::AnyHash
                ),
                pay_group: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup,
                  FinchAPI::Internal::Util::AnyHash
                ),
                pay_statement: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement,
                  FinchAPI::Internal::Util::AnyHash
                ),
                payment: T.any(
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment,
                  FinchAPI::Internal::Util::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(
              company: nil,
              directory: nil,
              employment: nil,
              individual: nil,
              pay_group: nil,
              pay_statement: nil,
              payment: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    company: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company,
                    directory: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory,
                    employment: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment,
                    individual: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual,
                    pay_group: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayGroup,
                    pay_statement: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement,
                    payment: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment
                  }
                )
            end
            def to_hash
            end

            class Company < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :id

              sig { params(id: T::Boolean).void }
              attr_writer :id

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts
                  )
                )
              end
              attr_reader :accounts

              sig do
                params(
                  accounts: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :accounts

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments
                  )
                )
              end
              attr_reader :departments

              sig do
                params(
                  departments: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :departments

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :ein

              sig { params(ein: T::Boolean).void }
              attr_writer :ein

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity
                  )
                )
              end
              attr_reader :entity

              sig do
                params(
                  entity: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :entity

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :legal_name

              sig { params(legal_name: T::Boolean).void }
              attr_writer :legal_name

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations
                  )
                )
              end
              attr_reader :locations

              sig do
                params(
                  locations: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :locations

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :primary_email

              sig { params(primary_email: T::Boolean).void }
              attr_writer :primary_email

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :primary_phone_number

              sig { params(primary_phone_number: T::Boolean).void }
              attr_writer :primary_phone_number

              sig do
                params(
                  id: T::Boolean,
                  accounts: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  departments: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  ein: T::Boolean,
                  entity: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  legal_name: T::Boolean,
                  locations: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  primary_email: T::Boolean,
                  primary_phone_number: T::Boolean
                )
                  .returns(T.attached_class)
              end
              def self.new(
                id: nil,
                accounts: nil,
                departments: nil,
                ein: nil,
                entity: nil,
                legal_name: nil,
                locations: nil,
                primary_email: nil,
                primary_phone_number: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      id: T::Boolean,
                      accounts: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Accounts,
                      departments: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments,
                      ein: T::Boolean,
                      entity: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Entity,
                      legal_name: T::Boolean,
                      locations: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Locations,
                      primary_email: T::Boolean,
                      primary_phone_number: T::Boolean
                    }
                  )
              end
              def to_hash
              end

              class Accounts < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :account_name

                sig { params(account_name: T::Boolean).void }
                attr_writer :account_name

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :account_number

                sig { params(account_number: T::Boolean).void }
                attr_writer :account_number

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :account_type

                sig { params(account_type: T::Boolean).void }
                attr_writer :account_type

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :institution_name

                sig { params(institution_name: T::Boolean).void }
                attr_writer :institution_name

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :routing_number

                sig { params(routing_number: T::Boolean).void }
                attr_writer :routing_number

                sig do
                  params(
                    account_name: T::Boolean,
                    account_number: T::Boolean,
                    account_type: T::Boolean,
                    institution_name: T::Boolean,
                    routing_number: T::Boolean
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  account_name: nil,
                  account_number: nil,
                  account_type: nil,
                  institution_name: nil,
                  routing_number: nil
                )
                end

                sig do
                  override
                    .returns(
                      {
                        account_name: T::Boolean,
                        account_number: T::Boolean,
                        account_type: T::Boolean,
                        institution_name: T::Boolean,
                        routing_number: T::Boolean
                      }
                    )
                end
                def to_hash
                end
              end

              class Departments < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :name

                sig { params(name: T::Boolean).void }
                attr_writer :name

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent
                    )
                  )
                end
                attr_reader :parent

                sig do
                  params(
                    parent: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .void
                end
                attr_writer :parent

                sig do
                  params(
                    name: T::Boolean,
                    parent: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .returns(T.attached_class)
                end
                def self.new(name: nil, parent: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        name: T::Boolean,
                        parent: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Company::Departments::Parent
                      }
                    )
                end
                def to_hash
                end

                class Parent < FinchAPI::BaseModel
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :name

                  sig { params(name: T::Boolean).void }
                  attr_writer :name

                  sig { params(name: T::Boolean).returns(T.attached_class) }
                  def self.new(name: nil)
                  end

                  sig { override.returns({name: T::Boolean}) }
                  def to_hash
                  end
                end
              end

              class Entity < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :subtype

                sig { params(subtype: T::Boolean).void }
                attr_writer :subtype

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :type

                sig { params(type: T::Boolean).void }
                attr_writer :type

                sig { params(subtype: T::Boolean, type: T::Boolean).returns(T.attached_class) }
                def self.new(subtype: nil, type: nil)
                end

                sig { override.returns({subtype: T::Boolean, type: T::Boolean}) }
                def to_hash
                end
              end

              class Locations < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :city

                sig { params(city: T::Boolean).void }
                attr_writer :city

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :country

                sig { params(country: T::Boolean).void }
                attr_writer :country

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :line1

                sig { params(line1: T::Boolean).void }
                attr_writer :line1

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :line2

                sig { params(line2: T::Boolean).void }
                attr_writer :line2

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :postal_code

                sig { params(postal_code: T::Boolean).void }
                attr_writer :postal_code

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :state

                sig { params(state: T::Boolean).void }
                attr_writer :state

                sig do
                  params(
                    city: T::Boolean,
                    country: T::Boolean,
                    line1: T::Boolean,
                    line2: T::Boolean,
                    postal_code: T::Boolean,
                    state: T::Boolean
                  )
                    .returns(T.attached_class)
                end
                def self.new(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        city: T::Boolean,
                        country: T::Boolean,
                        line1: T::Boolean,
                        line2: T::Boolean,
                        postal_code: T::Boolean,
                        state: T::Boolean
                      }
                    )
                end
                def to_hash
                end
              end
            end

            class Directory < FinchAPI::BaseModel
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals
                  )
                )
              end
              attr_reader :individuals

              sig do
                params(
                  individuals: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :individuals

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging
                  )
                )
              end
              attr_reader :paging

              sig do
                params(
                  paging: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :paging

              sig do
                params(
                  individuals: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  paging: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(individuals: nil, paging: nil)
              end

              sig do
                override
                  .returns(
                    {
                      individuals: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals,
                      paging: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Paging
                    }
                  )
              end
              def to_hash
              end

              class Individuals < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :id

                sig { params(id: T::Boolean).void }
                attr_writer :id

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :department

                sig { params(department: T::Boolean).void }
                attr_writer :department

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :first_name

                sig { params(first_name: T::Boolean).void }
                attr_writer :first_name

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :is_active

                sig { params(is_active: T::Boolean).void }
                attr_writer :is_active

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :last_name

                sig { params(last_name: T::Boolean).void }
                attr_writer :last_name

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager
                    )
                  )
                end
                attr_reader :manager

                sig do
                  params(
                    manager: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .void
                end
                attr_writer :manager

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :middle_name

                sig { params(middle_name: T::Boolean).void }
                attr_writer :middle_name

                sig do
                  params(
                    id: T::Boolean,
                    department: T::Boolean,
                    first_name: T::Boolean,
                    is_active: T::Boolean,
                    last_name: T::Boolean,
                    manager: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                      FinchAPI::Internal::Util::AnyHash
                    ),
                    middle_name: T::Boolean
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  id: nil,
                  department: nil,
                  first_name: nil,
                  is_active: nil,
                  last_name: nil,
                  manager: nil,
                  middle_name: nil
                )
                end

                sig do
                  override
                    .returns(
                      {
                        id: T::Boolean,
                        department: T::Boolean,
                        first_name: T::Boolean,
                        is_active: T::Boolean,
                        last_name: T::Boolean,
                        manager: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                        middle_name: T::Boolean
                      }
                    )
                end
                def to_hash
                end

                class Manager < FinchAPI::BaseModel
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :id

                  sig { params(id: T::Boolean).void }
                  attr_writer :id

                  sig { params(id: T::Boolean).returns(T.attached_class) }
                  def self.new(id: nil)
                  end

                  sig { override.returns({id: T::Boolean}) }
                  def to_hash
                  end
                end
              end

              class Paging < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :count

                sig { params(count: T::Boolean).void }
                attr_writer :count

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :offset

                sig { params(offset: T::Boolean).void }
                attr_writer :offset

                sig { params(count: T::Boolean, offset: T::Boolean).returns(T.attached_class) }
                def self.new(count: nil, offset: nil)
                end

                sig { override.returns({count: T::Boolean, offset: T::Boolean}) }
                def to_hash
                end
              end
            end

            class Employment < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :id

              sig { params(id: T::Boolean).void }
              attr_writer :id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :class_code

              sig { params(class_code: T::Boolean).void }
              attr_writer :class_code

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :custom_fields

              sig { params(custom_fields: T::Boolean).void }
              attr_writer :custom_fields

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department
                  )
                )
              end
              attr_reader :department

              sig do
                params(
                  department: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :department

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment
                  )
                )
              end
              attr_reader :employment

              sig do
                params(
                  employment: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :employment

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :employment_status

              sig { params(employment_status: T::Boolean).void }
              attr_writer :employment_status

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :end_date

              sig { params(end_date: T::Boolean).void }
              attr_writer :end_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :first_name

              sig { params(first_name: T::Boolean).void }
              attr_writer :first_name

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income
                  )
                )
              end
              attr_reader :income

              sig do
                params(
                  income: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :income

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :income_history

              sig { params(income_history: T::Boolean).void }
              attr_writer :income_history

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_active

              sig { params(is_active: T::Boolean).void }
              attr_writer :is_active

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :last_name

              sig { params(last_name: T::Boolean).void }
              attr_writer :last_name

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location
                  )
                )
              end
              attr_reader :location

              sig do
                params(
                  location: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :location

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager
                  )
                )
              end
              attr_reader :manager

              sig do
                params(
                  manager: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :manager

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :middle_name

              sig { params(middle_name: T::Boolean).void }
              attr_writer :middle_name

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :start_date

              sig { params(start_date: T::Boolean).void }
              attr_writer :start_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :title

              sig { params(title: T::Boolean).void }
              attr_writer :title

              sig do
                params(
                  id: T::Boolean,
                  class_code: T::Boolean,
                  custom_fields: T::Boolean,
                  department: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  employment: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  employment_status: T::Boolean,
                  end_date: T::Boolean,
                  first_name: T::Boolean,
                  income: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  income_history: T::Boolean,
                  is_active: T::Boolean,
                  last_name: T::Boolean,
                  location: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  manager: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  middle_name: T::Boolean,
                  start_date: T::Boolean,
                  title: T::Boolean
                )
                  .returns(T.attached_class)
              end
              def self.new(
                id: nil,
                class_code: nil,
                custom_fields: nil,
                department: nil,
                employment: nil,
                employment_status: nil,
                end_date: nil,
                first_name: nil,
                income: nil,
                income_history: nil,
                is_active: nil,
                last_name: nil,
                location: nil,
                manager: nil,
                middle_name: nil,
                start_date: nil,
                title: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      id: T::Boolean,
                      class_code: T::Boolean,
                      custom_fields: T::Boolean,
                      department: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Department,
                      employment: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Employment,
                      employment_status: T::Boolean,
                      end_date: T::Boolean,
                      first_name: T::Boolean,
                      income: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Income,
                      income_history: T::Boolean,
                      is_active: T::Boolean,
                      last_name: T::Boolean,
                      location: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Location,
                      manager: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Employment::Manager,
                      middle_name: T::Boolean,
                      start_date: T::Boolean,
                      title: T::Boolean
                    }
                  )
              end
              def to_hash
              end

              class Department < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :name

                sig { params(name: T::Boolean).void }
                attr_writer :name

                sig { params(name: T::Boolean).returns(T.attached_class) }
                def self.new(name: nil)
                end

                sig { override.returns({name: T::Boolean}) }
                def to_hash
                end
              end

              class Employment < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :subtype

                sig { params(subtype: T::Boolean).void }
                attr_writer :subtype

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :type

                sig { params(type: T::Boolean).void }
                attr_writer :type

                sig { params(subtype: T::Boolean, type: T::Boolean).returns(T.attached_class) }
                def self.new(subtype: nil, type: nil)
                end

                sig { override.returns({subtype: T::Boolean, type: T::Boolean}) }
                def to_hash
                end
              end

              class Income < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :amount

                sig { params(amount: T::Boolean).void }
                attr_writer :amount

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :currency

                sig { params(currency: T::Boolean).void }
                attr_writer :currency

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :unit

                sig { params(unit: T::Boolean).void }
                attr_writer :unit

                sig do
                  params(amount: T::Boolean, currency: T::Boolean, unit: T::Boolean).returns(T.attached_class)
                end
                def self.new(amount: nil, currency: nil, unit: nil)
                end

                sig { override.returns({amount: T::Boolean, currency: T::Boolean, unit: T::Boolean}) }
                def to_hash
                end
              end

              class Location < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :city

                sig { params(city: T::Boolean).void }
                attr_writer :city

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :country

                sig { params(country: T::Boolean).void }
                attr_writer :country

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :line1

                sig { params(line1: T::Boolean).void }
                attr_writer :line1

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :line2

                sig { params(line2: T::Boolean).void }
                attr_writer :line2

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :postal_code

                sig { params(postal_code: T::Boolean).void }
                attr_writer :postal_code

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :state

                sig { params(state: T::Boolean).void }
                attr_writer :state

                sig do
                  params(
                    city: T::Boolean,
                    country: T::Boolean,
                    line1: T::Boolean,
                    line2: T::Boolean,
                    postal_code: T::Boolean,
                    state: T::Boolean
                  )
                    .returns(T.attached_class)
                end
                def self.new(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        city: T::Boolean,
                        country: T::Boolean,
                        line1: T::Boolean,
                        line2: T::Boolean,
                        postal_code: T::Boolean,
                        state: T::Boolean
                      }
                    )
                end
                def to_hash
                end
              end

              class Manager < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :id

                sig { params(id: T::Boolean).void }
                attr_writer :id

                sig { params(id: T::Boolean).returns(T.attached_class) }
                def self.new(id: nil)
                end

                sig { override.returns({id: T::Boolean}) }
                def to_hash
                end
              end
            end

            class Individual < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :id

              sig { params(id: T::Boolean).void }
              attr_writer :id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :dob

              sig { params(dob: T::Boolean).void }
              attr_writer :dob

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails
                  )
                )
              end
              attr_reader :emails

              sig do
                params(
                  emails: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :emails

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :encrypted_ssn

              sig { params(encrypted_ssn: T::Boolean).void }
              attr_writer :encrypted_ssn

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :ethnicity

              sig { params(ethnicity: T::Boolean).void }
              attr_writer :ethnicity

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :first_name

              sig { params(first_name: T::Boolean).void }
              attr_writer :first_name

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :gender

              sig { params(gender: T::Boolean).void }
              attr_writer :gender

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :last_name

              sig { params(last_name: T::Boolean).void }
              attr_writer :last_name

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :middle_name

              sig { params(middle_name: T::Boolean).void }
              attr_writer :middle_name

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers
                  )
                )
              end
              attr_reader :phone_numbers

              sig do
                params(
                  phone_numbers: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :phone_numbers

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :preferred_name

              sig { params(preferred_name: T::Boolean).void }
              attr_writer :preferred_name

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence
                  )
                )
              end
              attr_reader :residence

              sig do
                params(
                  residence: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :residence

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :ssn

              sig { params(ssn: T::Boolean).void }
              attr_writer :ssn

              sig do
                params(
                  id: T::Boolean,
                  dob: T::Boolean,
                  emails: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  encrypted_ssn: T::Boolean,
                  ethnicity: T::Boolean,
                  first_name: T::Boolean,
                  gender: T::Boolean,
                  last_name: T::Boolean,
                  middle_name: T::Boolean,
                  phone_numbers: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  preferred_name: T::Boolean,
                  residence: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  ssn: T::Boolean
                )
                  .returns(T.attached_class)
              end
              def self.new(
                id: nil,
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
                ssn: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      id: T::Boolean,
                      dob: T::Boolean,
                      emails: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Emails,
                      encrypted_ssn: T::Boolean,
                      ethnicity: T::Boolean,
                      first_name: T::Boolean,
                      gender: T::Boolean,
                      last_name: T::Boolean,
                      middle_name: T::Boolean,
                      phone_numbers: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                      preferred_name: T::Boolean,
                      residence: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Individual::Residence,
                      ssn: T::Boolean
                    }
                  )
              end
              def to_hash
              end

              class Emails < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :data

                sig { params(data: T::Boolean).void }
                attr_writer :data

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :type

                sig { params(type: T::Boolean).void }
                attr_writer :type

                sig { params(data: T::Boolean, type: T::Boolean).returns(T.attached_class) }
                def self.new(data: nil, type: nil)
                end

                sig { override.returns({data: T::Boolean, type: T::Boolean}) }
                def to_hash
                end
              end

              class PhoneNumbers < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :data

                sig { params(data: T::Boolean).void }
                attr_writer :data

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :type

                sig { params(type: T::Boolean).void }
                attr_writer :type

                sig { params(data: T::Boolean, type: T::Boolean).returns(T.attached_class) }
                def self.new(data: nil, type: nil)
                end

                sig { override.returns({data: T::Boolean, type: T::Boolean}) }
                def to_hash
                end
              end

              class Residence < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :city

                sig { params(city: T::Boolean).void }
                attr_writer :city

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :country

                sig { params(country: T::Boolean).void }
                attr_writer :country

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :line1

                sig { params(line1: T::Boolean).void }
                attr_writer :line1

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :line2

                sig { params(line2: T::Boolean).void }
                attr_writer :line2

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :postal_code

                sig { params(postal_code: T::Boolean).void }
                attr_writer :postal_code

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :state

                sig { params(state: T::Boolean).void }
                attr_writer :state

                sig do
                  params(
                    city: T::Boolean,
                    country: T::Boolean,
                    line1: T::Boolean,
                    line2: T::Boolean,
                    postal_code: T::Boolean,
                    state: T::Boolean
                  )
                    .returns(T.attached_class)
                end
                def self.new(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        city: T::Boolean,
                        country: T::Boolean,
                        line1: T::Boolean,
                        line2: T::Boolean,
                        postal_code: T::Boolean,
                        state: T::Boolean
                      }
                    )
                end
                def to_hash
                end
              end
            end

            class PayGroup < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :id

              sig { params(id: T::Boolean).void }
              attr_writer :id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :individual_ids

              sig { params(individual_ids: T::Boolean).void }
              attr_writer :individual_ids

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :name

              sig { params(name: T::Boolean).void }
              attr_writer :name

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :pay_frequencies

              sig { params(pay_frequencies: T::Boolean).void }
              attr_writer :pay_frequencies

              sig do
                params(
                  id: T::Boolean,
                  individual_ids: T::Boolean,
                  name: T::Boolean,
                  pay_frequencies: T::Boolean
                )
                  .returns(T.attached_class)
              end
              def self.new(id: nil, individual_ids: nil, name: nil, pay_frequencies: nil)
              end

              sig do
                override
                  .returns({
                             id: T::Boolean,
                             individual_ids: T::Boolean,
                             name: T::Boolean,
                             pay_frequencies: T::Boolean
                           })
              end
              def to_hash
              end
            end

            class PayStatement < FinchAPI::BaseModel
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging
                  )
                )
              end
              attr_reader :paging

              sig do
                params(
                  paging: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :paging

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
                  )
                )
              end
              attr_reader :pay_statements

              sig do
                params(
                  pay_statements: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :pay_statements

              sig do
                params(
                  paging: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                    FinchAPI::Internal::Util::AnyHash
                  ),
                  pay_statements: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(paging: nil, pay_statements: nil)
              end

              sig do
                override
                  .returns(
                    {
                      paging: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                      pay_statements: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
                    }
                  )
              end
              def to_hash
              end

              class Paging < FinchAPI::BaseModel
                sig { returns(T::Boolean) }
                attr_accessor :count

                sig { returns(T::Boolean) }
                attr_accessor :offset

                sig { params(count: T::Boolean, offset: T::Boolean).returns(T.attached_class) }
                def self.new(count:, offset:)
                end

                sig { override.returns({count: T::Boolean, offset: T::Boolean}) }
                def to_hash
                end
              end

              class PayStatements < FinchAPI::BaseModel
                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings
                    )
                  )
                end
                attr_reader :earnings

                sig do
                  params(
                    earnings: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .void
                end
                attr_writer :earnings

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions
                    )
                  )
                end
                attr_reader :employee_deductions

                sig do
                  params(
                    employee_deductions: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .void
                end
                attr_writer :employee_deductions

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions
                    )
                  )
                end
                attr_reader :employer_contributions

                sig do
                  params(
                    employer_contributions: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .void
                end
                attr_writer :employer_contributions

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :gross_pay

                sig { params(gross_pay: T::Boolean).void }
                attr_writer :gross_pay

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :individual_id

                sig { params(individual_id: T::Boolean).void }
                attr_writer :individual_id

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :net_pay

                sig { params(net_pay: T::Boolean).void }
                attr_writer :net_pay

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :payment_method

                sig { params(payment_method: T::Boolean).void }
                attr_writer :payment_method

                sig do
                  returns(
                    T.nilable(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes
                    )
                  )
                end
                attr_reader :taxes

                sig do
                  params(
                    taxes: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                      FinchAPI::Internal::Util::AnyHash
                    )
                  )
                    .void
                end
                attr_writer :taxes

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :total_hours

                sig { params(total_hours: T::Boolean).void }
                attr_writer :total_hours

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :type

                sig { params(type: T::Boolean).void }
                attr_writer :type

                sig do
                  params(
                    earnings: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                      FinchAPI::Internal::Util::AnyHash
                    ),
                    employee_deductions: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                      FinchAPI::Internal::Util::AnyHash
                    ),
                    employer_contributions: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                      FinchAPI::Internal::Util::AnyHash
                    ),
                    gross_pay: T::Boolean,
                    individual_id: T::Boolean,
                    net_pay: T::Boolean,
                    payment_method: T::Boolean,
                    taxes: T.any(
                      FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                      FinchAPI::Internal::Util::AnyHash
                    ),
                    total_hours: T::Boolean,
                    type: T::Boolean
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  earnings: nil,
                  employee_deductions: nil,
                  employer_contributions: nil,
                  gross_pay: nil,
                  individual_id: nil,
                  net_pay: nil,
                  payment_method: nil,
                  taxes: nil,
                  total_hours: nil,
                  type: nil
                )
                end

                sig do
                  override
                    .returns(
                      {
                        earnings: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                        employee_deductions: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                        employer_contributions: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                        gross_pay: T::Boolean,
                        individual_id: T::Boolean,
                        net_pay: T::Boolean,
                        payment_method: T::Boolean,
                        taxes: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                        total_hours: T::Boolean,
                        type: T::Boolean
                      }
                    )
                end
                def to_hash
                end

                class Earnings < FinchAPI::BaseModel
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :amount

                  sig { params(amount: T::Boolean).void }
                  attr_writer :amount

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :currency

                  sig { params(currency: T::Boolean).void }
                  attr_writer :currency

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :name

                  sig { params(name: T::Boolean).void }
                  attr_writer :name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :type

                  sig { params(type: T::Boolean).void }
                  attr_writer :type

                  sig do
                    params(amount: T::Boolean, currency: T::Boolean, name: T::Boolean, type: T::Boolean)
                      .returns(T.attached_class)
                  end
                  def self.new(amount: nil, currency: nil, name: nil, type: nil)
                  end

                  sig do
                    override.returns(
                      {
                        amount: T::Boolean,
                        currency: T::Boolean,
                        name: T::Boolean,
                        type: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end
                end

                class EmployeeDeductions < FinchAPI::BaseModel
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :amount

                  sig { params(amount: T::Boolean).void }
                  attr_writer :amount

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :currency

                  sig { params(currency: T::Boolean).void }
                  attr_writer :currency

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :name

                  sig { params(name: T::Boolean).void }
                  attr_writer :name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :pre_tax

                  sig { params(pre_tax: T::Boolean).void }
                  attr_writer :pre_tax

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :type

                  sig { params(type: T::Boolean).void }
                  attr_writer :type

                  sig do
                    params(
                      amount: T::Boolean,
                      currency: T::Boolean,
                      name: T::Boolean,
                      pre_tax: T::Boolean,
                      type: T::Boolean
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(amount: nil, currency: nil, name: nil, pre_tax: nil, type: nil)
                  end

                  sig do
                    override
                      .returns(
                        {
                          amount: T::Boolean,
                          currency: T::Boolean,
                          name: T::Boolean,
                          pre_tax: T::Boolean,
                          type: T::Boolean
                        }
                      )
                  end
                  def to_hash
                  end
                end

                class EmployerContributions < FinchAPI::BaseModel
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :amount

                  sig { params(amount: T::Boolean).void }
                  attr_writer :amount

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :currency

                  sig { params(currency: T::Boolean).void }
                  attr_writer :currency

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :name

                  sig { params(name: T::Boolean).void }
                  attr_writer :name

                  sig do
                    params(
                      amount: T::Boolean,
                      currency: T::Boolean,
                      name: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(amount: nil, currency: nil, name: nil)
                  end

                  sig { override.returns({amount: T::Boolean, currency: T::Boolean, name: T::Boolean}) }
                  def to_hash
                  end
                end

                class Taxes < FinchAPI::BaseModel
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :amount

                  sig { params(amount: T::Boolean).void }
                  attr_writer :amount

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :currency

                  sig { params(currency: T::Boolean).void }
                  attr_writer :currency

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :employer

                  sig { params(employer: T::Boolean).void }
                  attr_writer :employer

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :name

                  sig { params(name: T::Boolean).void }
                  attr_writer :name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :type

                  sig { params(type: T::Boolean).void }
                  attr_writer :type

                  sig do
                    params(
                      amount: T::Boolean,
                      currency: T::Boolean,
                      employer: T::Boolean,
                      name: T::Boolean,
                      type: T::Boolean
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(amount: nil, currency: nil, employer: nil, name: nil, type: nil)
                  end

                  sig do
                    override
                      .returns(
                        {
                          amount: T::Boolean,
                          currency: T::Boolean,
                          employer: T::Boolean,
                          name: T::Boolean,
                          type: T::Boolean
                        }
                      )
                  end
                  def to_hash
                  end
                end
              end
            end

            class Payment < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :id

              sig { params(id: T::Boolean).void }
              attr_writer :id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :company_debit

              sig { params(company_debit: T::Boolean).void }
              attr_writer :company_debit

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :debit_date

              sig { params(debit_date: T::Boolean).void }
              attr_writer :debit_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :employee_taxes

              sig { params(employee_taxes: T::Boolean).void }
              attr_writer :employee_taxes

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :employer_taxes

              sig { params(employer_taxes: T::Boolean).void }
              attr_writer :employer_taxes

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :gross_pay

              sig { params(gross_pay: T::Boolean).void }
              attr_writer :gross_pay

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :individual_ids

              sig { params(individual_ids: T::Boolean).void }
              attr_writer :individual_ids

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :net_pay

              sig { params(net_pay: T::Boolean).void }
              attr_writer :net_pay

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :pay_date

              sig { params(pay_date: T::Boolean).void }
              attr_writer :pay_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :pay_frequencies

              sig { params(pay_frequencies: T::Boolean).void }
              attr_writer :pay_frequencies

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :pay_group_ids

              sig { params(pay_group_ids: T::Boolean).void }
              attr_writer :pay_group_ids

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod
                  )
                )
              end
              attr_reader :pay_period

              sig do
                params(
                  pay_period: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .void
              end
              attr_writer :pay_period

              sig do
                params(
                  id: T::Boolean,
                  company_debit: T::Boolean,
                  debit_date: T::Boolean,
                  employee_taxes: T::Boolean,
                  employer_taxes: T::Boolean,
                  gross_pay: T::Boolean,
                  individual_ids: T::Boolean,
                  net_pay: T::Boolean,
                  pay_date: T::Boolean,
                  pay_frequencies: T::Boolean,
                  pay_group_ids: T::Boolean,
                  pay_period: T.any(
                    FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod,
                    FinchAPI::Internal::Util::AnyHash
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(
                id: nil,
                company_debit: nil,
                debit_date: nil,
                employee_taxes: nil,
                employer_taxes: nil,
                gross_pay: nil,
                individual_ids: nil,
                net_pay: nil,
                pay_date: nil,
                pay_frequencies: nil,
                pay_group_ids: nil,
                pay_period: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      id: T::Boolean,
                      company_debit: T::Boolean,
                      debit_date: T::Boolean,
                      employee_taxes: T::Boolean,
                      employer_taxes: T::Boolean,
                      gross_pay: T::Boolean,
                      individual_ids: T::Boolean,
                      net_pay: T::Boolean,
                      pay_date: T::Boolean,
                      pay_frequencies: T::Boolean,
                      pay_group_ids: T::Boolean,
                      pay_period: FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::SupportedFields::Payment::PayPeriod
                    }
                  )
              end
              def to_hash
              end

              class PayPeriod < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :end_date

                sig { params(end_date: T::Boolean).void }
                attr_writer :end_date

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :start_date

                sig { params(start_date: T::Boolean).void }
                attr_writer :start_date

                sig { params(end_date: T::Boolean, start_date: T::Boolean).returns(T.attached_class) }
                def self.new(end_date: nil, start_date: nil)
                end

                sig { override.returns({end_date: T::Boolean, start_date: T::Boolean}) }
                def to_hash
                end
              end
            end
          end

          # The type of authentication method.
          module Type
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol
                )
              end

            ASSISTED =
              T.let(:assisted, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol)
            CREDENTIAL =
              T.let(:credential, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol)
            API_TOKEN =
              T.let(:api_token, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol)
            API_CREDENTIAL =
              T.let(
                :api_credential,
                FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol
              )
            OAUTH =
              T.let(:oauth, FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol)

            sig do
              override
                .returns(T::Array[FinchAPI::Models::AccountUpdateEvent::Data::AuthenticationMethod::Type::TaggedSymbol])
            end
            def self.values
            end
          end
        end
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::AccountUpdateEvent::EventType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, FinchAPI::Models::AccountUpdateEvent::EventType::TaggedSymbol) }

        ACCOUNT_UPDATED =
          T.let(:"account.updated", FinchAPI::Models::AccountUpdateEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::AccountUpdateEvent::EventType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
