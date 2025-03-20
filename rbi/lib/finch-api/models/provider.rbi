# typed: strong

module FinchAPI
  module Models
    class Provider < FinchAPI::BaseModel
      # The id of the payroll provider used in Connect.
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The list of authentication methods supported by the provider.
      sig { returns(T.nilable(T::Array[FinchAPI::Models::Provider::AuthenticationMethod])) }
      def authentication_methods
      end

      sig do
        params(_: T::Array[FinchAPI::Models::Provider::AuthenticationMethod])
          .returns(T::Array[FinchAPI::Models::Provider::AuthenticationMethod])
      end
      def authentication_methods=(_)
      end

      # `true` if the integration is in a beta state, `false` otherwise
      sig { returns(T.nilable(T::Boolean)) }
      def beta
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def beta=(_)
      end

      # The display name of the payroll provider.
      sig { returns(T.nilable(String)) }
      def display_name
      end

      sig { params(_: String).returns(String) }
      def display_name=(_)
      end

      # The url to the official icon of the payroll provider.
      sig { returns(T.nilable(String)) }
      def icon
      end

      sig { params(_: String).returns(String) }
      def icon=(_)
      end

      # The url to the official logo of the payroll provider.
      sig { returns(T.nilable(String)) }
      def logo
      end

      sig { params(_: String).returns(String) }
      def logo=(_)
      end

      # [DEPRECATED] Whether the Finch integration with this provider uses the Assisted
      #   Connect Flow by default. This field is now deprecated. Please check for a `type`
      #   of `assisted` in the `authentication_methods` field instead.
      sig { returns(T.nilable(T::Boolean)) }
      def manual
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def manual=(_)
      end

      # whether MFA is required for the provider.
      sig { returns(T.nilable(T::Boolean)) }
      def mfa_required
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def mfa_required=(_)
      end

      # The hex code for the primary color of the payroll provider.
      sig { returns(T.nilable(String)) }
      def primary_color
      end

      sig { params(_: String).returns(String) }
      def primary_color=(_)
      end

      # The list of Finch products supported on this payroll provider.
      sig { returns(T.nilable(T::Array[String])) }
      def products
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def products=(_)
      end

      sig do
        params(
          id: String,
          authentication_methods: T::Array[FinchAPI::Models::Provider::AuthenticationMethod],
          beta: T::Boolean,
          display_name: String,
          icon: String,
          logo: String,
          manual: T::Boolean,
          mfa_required: T::Boolean,
          primary_color: String,
          products: T::Array[String]
        )
          .returns(T.attached_class)
      end
      def self.new(
        id: nil,
        authentication_methods: nil,
        beta: nil,
        display_name: nil,
        icon: nil,
        logo: nil,
        manual: nil,
        mfa_required: nil,
        primary_color: nil,
        products: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              authentication_methods: T::Array[FinchAPI::Models::Provider::AuthenticationMethod],
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

      class AuthenticationMethod < FinchAPI::BaseModel
        # Each benefit type and their supported features. If the benefit type is not
        #   supported, the property will be null
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitsSupport)) }
        def benefits_support
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitsSupport, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitsSupport, FinchAPI::Util::AnyHash)))
        end
        def benefits_support=(_)
        end

        # The supported data fields returned by our HR and payroll endpoints
        sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields)) }
        def supported_fields
        end

        sig do
          params(
            _: T.nilable(
              T.any(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields, FinchAPI::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields, FinchAPI::Util::AnyHash)
              )
            )
        end
        def supported_fields=(_)
        end

        # The type of authentication method.
        sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)) }
        def type
        end

        sig do
          params(_: FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)
            .returns(FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)
        end
        def type=(_)
        end

        sig do
          params(
            benefits_support: T.nilable(FinchAPI::Models::HRIS::BenefitsSupport),
            supported_fields: T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields),
            type: FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol
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
                supported_fields: T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields),
                type: FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        class SupportedFields < FinchAPI::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company)) }
          def company
          end

          sig do
            params(
              _: T.any(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company, FinchAPI::Util::AnyHash)
            )
              .returns(
                T.any(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company, FinchAPI::Util::AnyHash)
              )
          end
          def company=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory)) }
          def directory
          end

          sig do
            params(
              _: T.any(
                FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory,
                FinchAPI::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory,
                  FinchAPI::Util::AnyHash
                )
              )
          end
          def directory=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment)) }
          def employment
          end

          sig do
            params(
              _: T.any(
                FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment,
                FinchAPI::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment,
                  FinchAPI::Util::AnyHash
                )
              )
          end
          def employment=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual)) }
          def individual
          end

          sig do
            params(
              _: T.any(
                FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual,
                FinchAPI::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual,
                  FinchAPI::Util::AnyHash
                )
              )
          end
          def individual=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayGroup)) }
          def pay_group
          end

          sig do
            params(
              _: T.any(
                FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayGroup,
                FinchAPI::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayGroup,
                  FinchAPI::Util::AnyHash
                )
              )
          end
          def pay_group=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement)) }
          def pay_statement
          end

          sig do
            params(
              _: T.any(
                FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement,
                FinchAPI::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement,
                  FinchAPI::Util::AnyHash
                )
              )
          end
          def pay_statement=(_)
          end

          sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment)) }
          def payment
          end

          sig do
            params(
              _: T.any(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment, FinchAPI::Util::AnyHash)
            )
              .returns(
                T.any(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment, FinchAPI::Util::AnyHash)
              )
          end
          def payment=(_)
          end

          # The supported data fields returned by our HR and payroll endpoints
          sig do
            params(
              company: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company,
              directory: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory,
              employment: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment,
              individual: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual,
              pay_group: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayGroup,
              pay_statement: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement,
              payment: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment
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
                  company: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company,
                  directory: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory,
                  employment: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment,
                  individual: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual,
                  pay_group: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayGroup,
                  pay_statement: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement,
                  payment: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment
                }
              )
          end
          def to_hash
          end

          class Company < FinchAPI::BaseModel
            sig { returns(T.nilable(T::Boolean)) }
            def id
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def id=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Accounts)) }
            def accounts
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Accounts,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Accounts,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def accounts=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments)
              )
            end
            def departments
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def departments=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def ein
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def ein=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Entity)) }
            def entity
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Entity,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Entity,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def entity=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def legal_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def legal_name=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Locations)) }
            def locations
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Locations,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Locations,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def locations=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def primary_email
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def primary_email=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def primary_phone_number
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def primary_phone_number=(_)
            end

            sig do
              params(
                id: T::Boolean,
                accounts: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Accounts,
                departments: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments,
                ein: T::Boolean,
                entity: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Entity,
                legal_name: T::Boolean,
                locations: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Locations,
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
                    accounts: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Accounts,
                    departments: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments,
                    ein: T::Boolean,
                    entity: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Entity,
                    legal_name: T::Boolean,
                    locations: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Locations,
                    primary_email: T::Boolean,
                    primary_phone_number: T::Boolean
                  }
                )
            end
            def to_hash
            end

            class Accounts < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def account_name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def account_name=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def account_number
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def account_number=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def account_type
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def account_type=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def institution_name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def institution_name=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def routing_number
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def routing_number=(_)
              end

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
              def self.new(account_name: nil, account_number: nil, account_type: nil, institution_name: nil, routing_number: nil)
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
              def name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def name=(_)
              end

              sig do
                returns(
                  T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent)
                )
              end
              def parent
              end

              sig do
                params(
                  _: T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def parent=(_)
              end

              sig do
                params(
                  name: T::Boolean,
                  parent: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent
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
                      parent: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Company::Departments::Parent
                    }
                  )
              end
              def to_hash
              end

              class Parent < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                def name
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def name=(_)
                end

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
              def subtype
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def subtype=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def type
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def type=(_)
              end

              sig { params(subtype: T::Boolean, type: T::Boolean).returns(T.attached_class) }
              def self.new(subtype: nil, type: nil)
              end

              sig { override.returns({subtype: T::Boolean, type: T::Boolean}) }
              def to_hash
              end
            end

            class Locations < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def city
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def city=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def country
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def country=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def line1
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def line1=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def line2
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def line2=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def postal_code
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def postal_code=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def state
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def state=(_)
              end

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
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals)
              )
            end
            def individuals
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def individuals=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Paging)) }
            def paging
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Paging,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Paging,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def paging=(_)
            end

            sig do
              params(
                individuals: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals,
                paging: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Paging
              )
                .returns(T.attached_class)
            end
            def self.new(individuals: nil, paging: nil)
            end

            sig do
              override
                .returns(
                  {
                    individuals: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals,
                    paging: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Paging
                  }
                )
            end
            def to_hash
            end

            class Individuals < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def id
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def id=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def department
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def department=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def first_name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def first_name=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def is_active
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def is_active=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def last_name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def last_name=(_)
              end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager
                  )
                )
              end
              def manager
              end

              sig do
                params(
                  _: T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def manager=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def middle_name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def middle_name=(_)
              end

              sig do
                params(
                  id: T::Boolean,
                  department: T::Boolean,
                  first_name: T::Boolean,
                  is_active: T::Boolean,
                  last_name: T::Boolean,
                  manager: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                  middle_name: T::Boolean
                )
                  .returns(T.attached_class)
              end
              def self.new(id: nil, department: nil, first_name: nil, is_active: nil, last_name: nil, manager: nil, middle_name: nil)
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
                      manager: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Directory::Individuals::Manager,
                      middle_name: T::Boolean
                    }
                  )
              end
              def to_hash
              end

              class Manager < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                def id
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def id=(_)
                end

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
              def count
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def count=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def offset
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def offset=(_)
              end

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
            def id
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def class_code
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def class_code=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def custom_fields
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def custom_fields=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Department)
              )
            end
            def department
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Department,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Department,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def department=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Employment)
              )
            end
            def employment
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Employment,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Employment,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def employment=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def employment_status
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def employment_status=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def end_date
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def end_date=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def first_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def first_name=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Income)) }
            def income
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Income,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Income,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def income=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def income_history
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def income_history=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_active
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_active=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def last_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def last_name=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Location)
              )
            end
            def location
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Location,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Location,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def location=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Manager)) }
            def manager
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Manager,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Manager,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def manager=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def middle_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def middle_name=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def start_date
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def start_date=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def title
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def title=(_)
            end

            sig do
              params(
                id: T::Boolean,
                class_code: T::Boolean,
                custom_fields: T::Boolean,
                department: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Department,
                employment: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Employment,
                employment_status: T::Boolean,
                end_date: T::Boolean,
                first_name: T::Boolean,
                income: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Income,
                income_history: T::Boolean,
                is_active: T::Boolean,
                last_name: T::Boolean,
                location: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Location,
                manager: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Manager,
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
                    department: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Department,
                    employment: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Employment,
                    employment_status: T::Boolean,
                    end_date: T::Boolean,
                    first_name: T::Boolean,
                    income: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Income,
                    income_history: T::Boolean,
                    is_active: T::Boolean,
                    last_name: T::Boolean,
                    location: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Location,
                    manager: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Employment::Manager,
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
              def name
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def name=(_)
              end

              sig { params(name: T::Boolean).returns(T.attached_class) }
              def self.new(name: nil)
              end

              sig { override.returns({name: T::Boolean}) }
              def to_hash
              end
            end

            class Employment < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def subtype
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def subtype=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def type
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def type=(_)
              end

              sig { params(subtype: T::Boolean, type: T::Boolean).returns(T.attached_class) }
              def self.new(subtype: nil, type: nil)
              end

              sig { override.returns({subtype: T::Boolean, type: T::Boolean}) }
              def to_hash
              end
            end

            class Income < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def amount
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def amount=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def currency
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def currency=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def unit
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def unit=(_)
              end

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
              def city
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def city=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def country
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def country=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def line1
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def line1=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def line2
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def line2=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def postal_code
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def postal_code=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def state
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def state=(_)
              end

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
              def id
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def id=(_)
              end

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
            def id
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def dob
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def dob=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Emails)) }
            def emails
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Emails,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Emails,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def emails=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def encrypted_ssn
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def encrypted_ssn=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def ethnicity
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def ethnicity=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def first_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def first_name=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def gender
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def gender=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def last_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def last_name=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def middle_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def middle_name=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers)
              )
            end
            def phone_numbers
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def phone_numbers=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def preferred_name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def preferred_name=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Residence)
              )
            end
            def residence
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Residence,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Residence,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def residence=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def ssn
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def ssn=(_)
            end

            sig do
              params(
                id: T::Boolean,
                dob: T::Boolean,
                emails: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Emails,
                encrypted_ssn: T::Boolean,
                ethnicity: T::Boolean,
                first_name: T::Boolean,
                gender: T::Boolean,
                last_name: T::Boolean,
                middle_name: T::Boolean,
                phone_numbers: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                preferred_name: T::Boolean,
                residence: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Residence,
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
                    emails: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Emails,
                    encrypted_ssn: T::Boolean,
                    ethnicity: T::Boolean,
                    first_name: T::Boolean,
                    gender: T::Boolean,
                    last_name: T::Boolean,
                    middle_name: T::Boolean,
                    phone_numbers: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::PhoneNumbers,
                    preferred_name: T::Boolean,
                    residence: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Individual::Residence,
                    ssn: T::Boolean
                  }
                )
            end
            def to_hash
            end

            class Emails < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def data
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def data=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def type
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def type=(_)
              end

              sig { params(data: T::Boolean, type: T::Boolean).returns(T.attached_class) }
              def self.new(data: nil, type: nil)
              end

              sig { override.returns({data: T::Boolean, type: T::Boolean}) }
              def to_hash
              end
            end

            class PhoneNumbers < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def data
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def data=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def type
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def type=(_)
              end

              sig { params(data: T::Boolean, type: T::Boolean).returns(T.attached_class) }
              def self.new(data: nil, type: nil)
              end

              sig { override.returns({data: T::Boolean, type: T::Boolean}) }
              def to_hash
              end
            end

            class Residence < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def city
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def city=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def country
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def country=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def line1
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def line1=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def line2
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def line2=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def postal_code
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def postal_code=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def state
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def state=(_)
              end

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
            def id
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def individual_ids
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def individual_ids=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def name
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def name=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def pay_frequencies
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def pay_frequencies=(_)
            end

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
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging)
              )
            end
            def paging
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def paging=(_)
            end

            sig do
              returns(
                T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements)
              )
            end
            def pay_statements
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def pay_statements=(_)
            end

            sig do
              params(
                paging: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                pay_statements: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
              )
                .returns(T.attached_class)
            end
            def self.new(paging: nil, pay_statements: nil)
            end

            sig do
              override
                .returns(
                  {
                    paging: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::Paging,
                    pay_statements: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements
                  }
                )
            end
            def to_hash
            end

            class Paging < FinchAPI::BaseModel
              sig { returns(T::Boolean) }
              def count
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def count=(_)
              end

              sig { returns(T::Boolean) }
              def offset
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def offset=(_)
              end

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
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings
                  )
                )
              end
              def earnings
              end

              sig do
                params(
                  _: T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def earnings=(_)
              end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions
                  )
                )
              end
              def employee_deductions
              end

              sig do
                params(
                  _: T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def employee_deductions=(_)
              end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions
                  )
                )
              end
              def employer_contributions
              end

              sig do
                params(
                  _: T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def employer_contributions=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def gross_pay
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def gross_pay=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def individual_id
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def individual_id=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def net_pay
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def net_pay=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def payment_method
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def payment_method=(_)
              end

              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes
                  )
                )
              end
              def taxes
              end

              sig do
                params(
                  _: T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                    FinchAPI::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                      FinchAPI::Util::AnyHash
                    )
                  )
              end
              def taxes=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def total_hours
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def total_hours=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def type
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def type=(_)
              end

              sig do
                params(
                  earnings: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                  employee_deductions: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                  employer_contributions: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                  gross_pay: T::Boolean,
                  individual_id: T::Boolean,
                  net_pay: T::Boolean,
                  payment_method: T::Boolean,
                  taxes: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
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
                      earnings: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Earnings,
                      employee_deductions: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployeeDeductions,
                      employer_contributions: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::EmployerContributions,
                      gross_pay: T::Boolean,
                      individual_id: T::Boolean,
                      net_pay: T::Boolean,
                      payment_method: T::Boolean,
                      taxes: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::PayStatement::PayStatements::Taxes,
                      total_hours: T::Boolean,
                      type: T::Boolean
                    }
                  )
              end
              def to_hash
              end

              class Earnings < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                def amount
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def amount=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def currency
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def currency=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def name
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def name=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def type
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def type=(_)
                end

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
                def amount
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def amount=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def currency
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def currency=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def name
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def name=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def pre_tax
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def pre_tax=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def type
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def type=(_)
                end

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
                def amount
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def amount=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def currency
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def currency=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def name
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def name=(_)
                end

                sig do
                  params(amount: T::Boolean, currency: T::Boolean, name: T::Boolean).returns(T.attached_class)
                end
                def self.new(amount: nil, currency: nil, name: nil)
                end

                sig { override.returns({amount: T::Boolean, currency: T::Boolean, name: T::Boolean}) }
                def to_hash
                end
              end

              class Taxes < FinchAPI::BaseModel
                sig { returns(T.nilable(T::Boolean)) }
                def amount
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def amount=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def currency
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def currency=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def employer
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def employer=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def name
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def name=(_)
                end

                sig { returns(T.nilable(T::Boolean)) }
                def type
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def type=(_)
                end

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
            def id
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def company_debit
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def company_debit=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def debit_date
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def debit_date=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def employee_taxes
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def employee_taxes=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def employer_taxes
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def employer_taxes=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def gross_pay
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def gross_pay=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def individual_ids
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def individual_ids=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def net_pay
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def net_pay=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def pay_date
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def pay_date=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def pay_frequencies
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def pay_frequencies=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def pay_group_ids
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def pay_group_ids=(_)
            end

            sig { returns(T.nilable(FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod)) }
            def pay_period
            end

            sig do
              params(
                _: T.any(
                  FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod,
                  FinchAPI::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod,
                    FinchAPI::Util::AnyHash
                  )
                )
            end
            def pay_period=(_)
            end

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
                pay_period: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod
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
                    pay_period: FinchAPI::Models::Provider::AuthenticationMethod::SupportedFields::Payment::PayPeriod
                  }
                )
            end
            def to_hash
            end

            class PayPeriod < FinchAPI::BaseModel
              sig { returns(T.nilable(T::Boolean)) }
              def end_date
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def end_date=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def start_date
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def start_date=(_)
              end

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

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Provider::AuthenticationMethod::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol) }

          ASSISTED = T.let(:assisted, FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)
          CREDENTIAL = T.let(:credential, FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)
          API_TOKEN = T.let(:api_token, FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)
          API_CREDENTIAL =
            T.let(:api_credential, FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)
          OAUTH = T.let(:oauth, FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Provider::AuthenticationMethod::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
