# typed: strong

module FinchAPI
  module Models
    class Provider < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(FinchAPI::Provider, FinchAPI::Internal::AnyHash) }

      # The id of the payroll provider used in Connect.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The list of authentication methods supported by the provider.
      sig do
        returns(T.nilable(T::Array[FinchAPI::Provider::AuthenticationMethod]))
      end
      attr_reader :authentication_methods

      sig do
        params(
          authentication_methods:
            T::Array[FinchAPI::Provider::AuthenticationMethod::OrHash]
        ).void
      end
      attr_writer :authentication_methods

      # `true` if the integration is in a beta state, `false` otherwise
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :beta

      sig { params(beta: T::Boolean).void }
      attr_writer :beta

      # The display name of the payroll provider.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # The url to the official icon of the payroll provider.
      sig { returns(T.nilable(String)) }
      attr_reader :icon

      sig { params(icon: String).void }
      attr_writer :icon

      # The url to the official logo of the payroll provider.
      sig { returns(T.nilable(String)) }
      attr_reader :logo

      sig { params(logo: String).void }
      attr_writer :logo

      # [DEPRECATED] Whether the Finch integration with this provider uses the Assisted
      # Connect Flow by default. This field is now deprecated. Please check for a `type`
      # of `assisted` in the `authentication_methods` field instead.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :manual

      sig { params(manual: T::Boolean).void }
      attr_writer :manual

      # whether MFA is required for the provider.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :mfa_required

      sig { params(mfa_required: T::Boolean).void }
      attr_writer :mfa_required

      # The hex code for the primary color of the payroll provider.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_color

      sig { params(primary_color: String).void }
      attr_writer :primary_color

      # The list of Finch products supported on this payroll provider.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :products

      sig { params(products: T::Array[String]).void }
      attr_writer :products

      sig do
        params(
          id: String,
          authentication_methods:
            T::Array[FinchAPI::Provider::AuthenticationMethod::OrHash],
          beta: T::Boolean,
          display_name: String,
          icon: String,
          logo: String,
          manual: T::Boolean,
          mfa_required: T::Boolean,
          primary_color: String,
          products: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The id of the payroll provider used in Connect.
        id: nil,
        # The list of authentication methods supported by the provider.
        authentication_methods: nil,
        # `true` if the integration is in a beta state, `false` otherwise
        beta: nil,
        # The display name of the payroll provider.
        display_name: nil,
        # The url to the official icon of the payroll provider.
        icon: nil,
        # The url to the official logo of the payroll provider.
        logo: nil,
        # [DEPRECATED] Whether the Finch integration with this provider uses the Assisted
        # Connect Flow by default. This field is now deprecated. Please check for a `type`
        # of `assisted` in the `authentication_methods` field instead.
        manual: nil,
        # whether MFA is required for the provider.
        mfa_required: nil,
        # The hex code for the primary color of the payroll provider.
        primary_color: nil,
        # The list of Finch products supported on this payroll provider.
        products: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            authentication_methods:
              T::Array[FinchAPI::Provider::AuthenticationMethod],
            beta: T::Boolean,
            display_name: String,
            icon: String,
            logo: String,
            manual: T::Boolean,
            mfa_required: T::Boolean,
            primary_color: String,
            products: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Provider::AuthenticationMethod,
              FinchAPI::Internal::AnyHash
            )
          end

        # Each benefit type and their supported features. If the benefit type is not
        # supported, the property will be null
        sig { returns(T.nilable(FinchAPI::HRIS::BenefitsSupport)) }
        attr_reader :benefits_support

        sig do
          params(
            benefits_support: T.nilable(FinchAPI::HRIS::BenefitsSupport::OrHash)
          ).void
        end
        attr_writer :benefits_support

        # The supported data fields returned by our HR and payroll endpoints
        sig do
          returns(
            T.nilable(FinchAPI::Provider::AuthenticationMethod::SupportedFields)
          )
        end
        attr_reader :supported_fields

        sig do
          params(
            supported_fields:
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::OrHash
              )
          ).void
        end
        attr_writer :supported_fields

        # The type of authentication method.
        sig do
          returns(
            T.nilable(
              FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: FinchAPI::Provider::AuthenticationMethod::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            benefits_support:
              T.nilable(FinchAPI::HRIS::BenefitsSupport::OrHash),
            supported_fields:
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::OrHash
              ),
            type: FinchAPI::Provider::AuthenticationMethod::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Each benefit type and their supported features. If the benefit type is not
          # supported, the property will be null
          benefits_support: nil,
          # The supported data fields returned by our HR and payroll endpoints
          supported_fields: nil,
          # The type of authentication method.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              benefits_support: T.nilable(FinchAPI::HRIS::BenefitsSupport),
              supported_fields:
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields
                ),
              type: FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class SupportedFields < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company
              )
            )
          end
          attr_reader :company

          sig do
            params(
              company:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::OrHash
            ).void
          end
          attr_writer :company

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory
              )
            )
          end
          attr_reader :directory

          sig do
            params(
              directory:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::OrHash
            ).void
          end
          attr_writer :directory

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment
              )
            )
          end
          attr_reader :employment

          sig do
            params(
              employment:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::OrHash
            ).void
          end
          attr_writer :employment

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual
              )
            )
          end
          attr_reader :individual

          sig do
            params(
              individual:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::OrHash
            ).void
          end
          attr_writer :individual

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayGroup
              )
            )
          end
          attr_reader :pay_group

          sig do
            params(
              pay_group:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayGroup::OrHash
            ).void
          end
          attr_writer :pay_group

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement
              )
            )
          end
          attr_reader :pay_statement

          sig do
            params(
              pay_statement:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::OrHash
            ).void
          end
          attr_writer :pay_statement

          sig do
            returns(
              T.nilable(
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment
              )
            )
          end
          attr_reader :payment

          sig do
            params(
              payment:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::OrHash
            ).void
          end
          attr_writer :payment

          # The supported data fields returned by our HR and payroll endpoints
          sig do
            params(
              company:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::OrHash,
              directory:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::OrHash,
              employment:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::OrHash,
              individual:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::OrHash,
              pay_group:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayGroup::OrHash,
              pay_statement:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::OrHash,
              payment:
                FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::OrHash
            ).returns(T.attached_class)
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
            override.returns(
              {
                company:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company,
                directory:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory,
                employment:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment,
                individual:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual,
                pay_group:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayGroup,
                pay_statement:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement,
                payment:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment
              }
            )
          end
          def to_hash
          end

          class Company < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :id

            sig { params(id: T::Boolean).void }
            attr_writer :id

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Accounts
                )
              )
            end
            attr_reader :accounts

            sig do
              params(
                accounts:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Accounts::OrHash
              ).void
            end
            attr_writer :accounts

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments
                )
              )
            end
            attr_reader :departments

            sig do
              params(
                departments:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::OrHash
              ).void
            end
            attr_writer :departments

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :ein

            sig { params(ein: T::Boolean).void }
            attr_writer :ein

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Entity
                )
              )
            end
            attr_reader :entity

            sig do
              params(
                entity:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Entity::OrHash
              ).void
            end
            attr_writer :entity

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :legal_name

            sig { params(legal_name: T::Boolean).void }
            attr_writer :legal_name

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Locations
                )
              )
            end
            attr_reader :locations

            sig do
              params(
                locations:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Locations::OrHash
              ).void
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
                accounts:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Accounts::OrHash,
                departments:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::OrHash,
                ein: T::Boolean,
                entity:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Entity::OrHash,
                legal_name: T::Boolean,
                locations:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Locations::OrHash,
                primary_email: T::Boolean,
                primary_phone_number: T::Boolean
              ).returns(T.attached_class)
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
              override.returns(
                {
                  id: T::Boolean,
                  accounts:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Accounts,
                  departments:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments,
                  ein: T::Boolean,
                  entity:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Entity,
                  legal_name: T::Boolean,
                  locations:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Locations,
                  primary_email: T::Boolean,
                  primary_phone_number: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Accounts < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Accounts,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
                ).returns(T.attached_class)
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
                override.returns(
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

            class Departments < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :name

              sig { params(name: T::Boolean).void }
              attr_writer :name

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent
                  )
                )
              end
              attr_reader :parent

              sig do
                params(
                  parent:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent::OrHash
                ).void
              end
              attr_writer :parent

              sig do
                params(
                  name: T::Boolean,
                  parent:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent::OrHash
                ).returns(T.attached_class)
              end
              def self.new(name: nil, parent: nil)
              end

              sig do
                override.returns(
                  {
                    name: T::Boolean,
                    parent:
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent
                  }
                )
              end
              def to_hash
              end

              class Parent < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent,
                      FinchAPI::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :name

                sig { params(name: T::Boolean).void }
                attr_writer :name

                sig { params(name: T::Boolean).returns(T.attached_class) }
                def self.new(name: nil)
                end

                sig { override.returns({ name: T::Boolean }) }
                def to_hash
                end
              end
            end

            class Entity < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Entity,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :subtype

              sig { params(subtype: T::Boolean).void }
              attr_writer :subtype

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :type

              sig { params(type: T::Boolean).void }
              attr_writer :type

              sig do
                params(subtype: T::Boolean, type: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(subtype: nil, type: nil)
              end

              sig do
                override.returns({ subtype: T::Boolean, type: T::Boolean })
              end
              def to_hash
              end
            end

            class Locations < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Company::Locations,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
                ).returns(T.attached_class)
              end
              def self.new(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              )
              end

              sig do
                override.returns(
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

          class Directory < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals
                )
              )
            end
            attr_reader :individuals

            sig do
              params(
                individuals:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::OrHash
              ).void
            end
            attr_writer :individuals

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Paging
                )
              )
            end
            attr_reader :paging

            sig do
              params(
                paging:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Paging::OrHash
              ).void
            end
            attr_writer :paging

            sig do
              params(
                individuals:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::OrHash,
                paging:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Paging::OrHash
              ).returns(T.attached_class)
            end
            def self.new(individuals: nil, paging: nil)
            end

            sig do
              override.returns(
                {
                  individuals:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals,
                  paging:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Paging
                }
              )
            end
            def to_hash
            end

            class Individuals < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager
                  )
                )
              end
              attr_reader :manager

              sig do
                params(
                  manager:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager::OrHash
                ).void
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
                  manager:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager::OrHash,
                  middle_name: T::Boolean
                ).returns(T.attached_class)
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
                override.returns(
                  {
                    id: T::Boolean,
                    department: T::Boolean,
                    first_name: T::Boolean,
                    is_active: T::Boolean,
                    last_name: T::Boolean,
                    manager:
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                    middle_name: T::Boolean
                  }
                )
              end
              def to_hash
              end

              class Manager < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                      FinchAPI::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :id

                sig { params(id: T::Boolean).void }
                attr_writer :id

                sig { params(id: T::Boolean).returns(T.attached_class) }
                def self.new(id: nil)
                end

                sig { override.returns({ id: T::Boolean }) }
                def to_hash
                end
              end
            end

            class Paging < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Directory::Paging,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :count

              sig { params(count: T::Boolean).void }
              attr_writer :count

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :offset

              sig { params(offset: T::Boolean).void }
              attr_writer :offset

              sig do
                params(count: T::Boolean, offset: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(count: nil, offset: nil)
              end

              sig do
                override.returns({ count: T::Boolean, offset: T::Boolean })
              end
              def to_hash
              end
            end
          end

          class Employment < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment,
                  FinchAPI::Internal::AnyHash
                )
              end

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
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Department
                )
              )
            end
            attr_reader :department

            sig do
              params(
                department:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Department::OrHash
              ).void
            end
            attr_writer :department

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Employment
                )
              )
            end
            attr_reader :employment

            sig do
              params(
                employment:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Employment::OrHash
              ).void
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
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Income
                )
              )
            end
            attr_reader :income

            sig do
              params(
                income:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Income::OrHash
              ).void
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
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Location
                )
              )
            end
            attr_reader :location

            sig do
              params(
                location:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Location::OrHash
              ).void
            end
            attr_writer :location

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Manager
                )
              )
            end
            attr_reader :manager

            sig do
              params(
                manager:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Manager::OrHash
              ).void
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
                department:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Department::OrHash,
                employment:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Employment::OrHash,
                employment_status: T::Boolean,
                end_date: T::Boolean,
                first_name: T::Boolean,
                income:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Income::OrHash,
                income_history: T::Boolean,
                is_active: T::Boolean,
                last_name: T::Boolean,
                location:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Location::OrHash,
                manager:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Manager::OrHash,
                middle_name: T::Boolean,
                start_date: T::Boolean,
                title: T::Boolean
              ).returns(T.attached_class)
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
              override.returns(
                {
                  id: T::Boolean,
                  class_code: T::Boolean,
                  custom_fields: T::Boolean,
                  department:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Department,
                  employment:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Employment,
                  employment_status: T::Boolean,
                  end_date: T::Boolean,
                  first_name: T::Boolean,
                  income:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Income,
                  income_history: T::Boolean,
                  is_active: T::Boolean,
                  last_name: T::Boolean,
                  location:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Location,
                  manager:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Manager,
                  middle_name: T::Boolean,
                  start_date: T::Boolean,
                  title: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Department < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Department,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :name

              sig { params(name: T::Boolean).void }
              attr_writer :name

              sig { params(name: T::Boolean).returns(T.attached_class) }
              def self.new(name: nil)
              end

              sig { override.returns({ name: T::Boolean }) }
              def to_hash
              end
            end

            class Employment < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Employment,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :subtype

              sig { params(subtype: T::Boolean).void }
              attr_writer :subtype

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :type

              sig { params(type: T::Boolean).void }
              attr_writer :type

              sig do
                params(subtype: T::Boolean, type: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(subtype: nil, type: nil)
              end

              sig do
                override.returns({ subtype: T::Boolean, type: T::Boolean })
              end
              def to_hash
              end
            end

            class Income < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Income,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
                params(
                  amount: T::Boolean,
                  currency: T::Boolean,
                  unit: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(amount: nil, currency: nil, unit: nil)
              end

              sig do
                override.returns(
                  { amount: T::Boolean, currency: T::Boolean, unit: T::Boolean }
                )
              end
              def to_hash
              end
            end

            class Location < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Location,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
                ).returns(T.attached_class)
              end
              def self.new(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              )
              end

              sig do
                override.returns(
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

            class Manager < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Employment::Manager,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :id

              sig { params(id: T::Boolean).void }
              attr_writer :id

              sig { params(id: T::Boolean).returns(T.attached_class) }
              def self.new(id: nil)
              end

              sig { override.returns({ id: T::Boolean }) }
              def to_hash
              end
            end
          end

          class Individual < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual,
                  FinchAPI::Internal::AnyHash
                )
              end

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
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Emails
                )
              )
            end
            attr_reader :emails

            sig do
              params(
                emails:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Emails::OrHash
              ).void
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
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers
                )
              )
            end
            attr_reader :phone_numbers

            sig do
              params(
                phone_numbers:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers::OrHash
              ).void
            end
            attr_writer :phone_numbers

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :preferred_name

            sig { params(preferred_name: T::Boolean).void }
            attr_writer :preferred_name

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Residence
                )
              )
            end
            attr_reader :residence

            sig do
              params(
                residence:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Residence::OrHash
              ).void
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
                emails:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Emails::OrHash,
                encrypted_ssn: T::Boolean,
                ethnicity: T::Boolean,
                first_name: T::Boolean,
                gender: T::Boolean,
                last_name: T::Boolean,
                middle_name: T::Boolean,
                phone_numbers:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers::OrHash,
                preferred_name: T::Boolean,
                residence:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Residence::OrHash,
                ssn: T::Boolean
              ).returns(T.attached_class)
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
              override.returns(
                {
                  id: T::Boolean,
                  dob: T::Boolean,
                  emails:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Emails,
                  encrypted_ssn: T::Boolean,
                  ethnicity: T::Boolean,
                  first_name: T::Boolean,
                  gender: T::Boolean,
                  last_name: T::Boolean,
                  middle_name: T::Boolean,
                  phone_numbers:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                  preferred_name: T::Boolean,
                  residence:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Residence,
                  ssn: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Emails < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Emails,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :data

              sig { params(data: T::Boolean).void }
              attr_writer :data

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :type

              sig { params(type: T::Boolean).void }
              attr_writer :type

              sig do
                params(data: T::Boolean, type: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(data: nil, type: nil)
              end

              sig { override.returns({ data: T::Boolean, type: T::Boolean }) }
              def to_hash
              end
            end

            class PhoneNumbers < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :data

              sig { params(data: T::Boolean).void }
              attr_writer :data

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :type

              sig { params(type: T::Boolean).void }
              attr_writer :type

              sig do
                params(data: T::Boolean, type: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(data: nil, type: nil)
              end

              sig { override.returns({ data: T::Boolean, type: T::Boolean }) }
              def to_hash
              end
            end

            class Residence < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Individual::Residence,
                    FinchAPI::Internal::AnyHash
                  )
                end

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
                ).returns(T.attached_class)
              end
              def self.new(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              )
              end

              sig do
                override.returns(
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

          class PayGroup < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayGroup,
                  FinchAPI::Internal::AnyHash
                )
              end

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
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              individual_ids: nil,
              name: nil,
              pay_frequencies: nil
            )
            end

            sig do
              override.returns(
                {
                  id: T::Boolean,
                  individual_ids: T::Boolean,
                  name: T::Boolean,
                  pay_frequencies: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class PayStatement < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging
                )
              )
            end
            attr_reader :paging

            sig do
              params(
                paging:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging::OrHash
              ).void
            end
            attr_writer :paging

            sig do
              returns(
                T.nilable(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
                )
              )
            end
            attr_reader :pay_statements

            sig do
              params(
                pay_statements:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::OrHash
              ).void
            end
            attr_writer :pay_statements

            sig do
              params(
                paging:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging::OrHash,
                pay_statements:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::OrHash
              ).returns(T.attached_class)
            end
            def self.new(paging: nil, pay_statements: nil)
            end

            sig do
              override.returns(
                {
                  paging:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                  pay_statements:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
                }
              )
            end
            def to_hash
            end

            class Paging < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T::Boolean) }
              attr_accessor :count

              sig { returns(T::Boolean) }
              attr_accessor :offset

              sig do
                params(count: T::Boolean, offset: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(count:, offset:)
              end

              sig do
                override.returns({ count: T::Boolean, offset: T::Boolean })
              end
              def to_hash
              end
            end

            class PayStatements < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings
                  )
                )
              end
              attr_reader :earnings

              sig do
                params(
                  earnings:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings::OrHash
                ).void
              end
              attr_writer :earnings

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions
                  )
                )
              end
              attr_reader :employee_deductions

              sig do
                params(
                  employee_deductions:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions::OrHash
                ).void
              end
              attr_writer :employee_deductions

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions
                  )
                )
              end
              attr_reader :employer_contributions

              sig do
                params(
                  employer_contributions:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions::OrHash
                ).void
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
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes
                  )
                )
              end
              attr_reader :taxes

              sig do
                params(
                  taxes:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes::OrHash
                ).void
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
                  earnings:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings::OrHash,
                  employee_deductions:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions::OrHash,
                  employer_contributions:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions::OrHash,
                  gross_pay: T::Boolean,
                  individual_id: T::Boolean,
                  net_pay: T::Boolean,
                  payment_method: T::Boolean,
                  taxes:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes::OrHash,
                  total_hours: T::Boolean,
                  type: T::Boolean
                ).returns(T.attached_class)
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
                override.returns(
                  {
                    earnings:
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                    employee_deductions:
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                    employer_contributions:
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                    gross_pay: T::Boolean,
                    individual_id: T::Boolean,
                    net_pay: T::Boolean,
                    payment_method: T::Boolean,
                    taxes:
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                    total_hours: T::Boolean,
                    type: T::Boolean
                  }
                )
              end
              def to_hash
              end

              class Earnings < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                      FinchAPI::Internal::AnyHash
                    )
                  end

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
                  params(
                    amount: T::Boolean,
                    currency: T::Boolean,
                    name: T::Boolean,
                    type: T::Boolean
                  ).returns(T.attached_class)
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

              class EmployeeDeductions < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                      FinchAPI::Internal::AnyHash
                    )
                  end

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
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount: nil,
                  currency: nil,
                  name: nil,
                  pre_tax: nil,
                  type: nil
                )
                end

                sig do
                  override.returns(
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

              class EmployerContributions < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                      FinchAPI::Internal::AnyHash
                    )
                  end

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

                sig do
                  override.returns(
                    {
                      amount: T::Boolean,
                      currency: T::Boolean,
                      name: T::Boolean
                    }
                  )
                end
                def to_hash
                end
              end

              class Taxes < FinchAPI::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      FinchAPI::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                      FinchAPI::Internal::AnyHash
                    )
                  end

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
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount: nil,
                  currency: nil,
                  employer: nil,
                  name: nil,
                  type: nil
                )
                end

                sig do
                  override.returns(
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

          class Payment < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment,
                  FinchAPI::Internal::AnyHash
                )
              end

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
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod
                )
              )
            end
            attr_reader :pay_period

            sig do
              params(
                pay_period:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod::OrHash
              ).void
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
                pay_period:
                  FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod::OrHash
              ).returns(T.attached_class)
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
              override.returns(
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
                  pay_period:
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod
                }
              )
            end
            def to_hash
            end

            class PayPeriod < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :end_date

              sig { params(end_date: T::Boolean).void }
              attr_writer :end_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :start_date

              sig { params(start_date: T::Boolean).void }
              attr_writer :start_date

              sig do
                params(end_date: T::Boolean, start_date: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(end_date: nil, start_date: nil)
              end

              sig do
                override.returns(
                  { end_date: T::Boolean, start_date: T::Boolean }
                )
              end
              def to_hash
              end
            end
          end
        end

        # The type of authentication method.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Provider::AuthenticationMethod::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSISTED =
            T.let(
              :assisted,
              FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            )
          CREDENTIAL =
            T.let(
              :credential,
              FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            )
          API_TOKEN =
            T.let(
              :api_token,
              FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            )
          API_CREDENTIAL =
            T.let(
              :api_credential,
              FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            )
          OAUTH =
            T.let(
              :oauth,
              FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Provider::AuthenticationMethod::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
