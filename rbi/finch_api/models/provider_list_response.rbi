# typed: strong

module FinchAPI
  module Models
    class ProviderListResponse < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            FinchAPI::Models::ProviderListResponse,
            FinchAPI::Internal::AnyHash
          )
        end

      # The id of the payroll provider used in Connect.
      sig { returns(String) }
      attr_accessor :id

      # The display name of the payroll provider.
      sig { returns(String) }
      attr_accessor :display_name

      # The list of Finch products supported on this payroll provider.
      sig { returns(T::Array[String]) }
      attr_accessor :products

      # The authentication methods supported by the provider.
      sig do
        returns(
          T.nilable(
            T::Array[
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod
            ]
          )
        )
      end
      attr_reader :authentication_methods

      sig do
        params(
          authentication_methods:
            T::Array[
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::OrHash
            ]
        ).void
      end
      attr_writer :authentication_methods

      # `true` if the integration is in a beta state, `false` otherwise
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :beta

      sig { params(beta: T::Boolean).void }
      attr_writer :beta

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

      sig do
        params(
          id: String,
          display_name: String,
          products: T::Array[String],
          authentication_methods:
            T::Array[
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::OrHash
            ],
          beta: T::Boolean,
          icon: String,
          logo: String,
          manual: T::Boolean,
          mfa_required: T::Boolean,
          primary_color: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The id of the payroll provider used in Connect.
        id:,
        # The display name of the payroll provider.
        display_name:,
        # The list of Finch products supported on this payroll provider.
        products:,
        # The authentication methods supported by the provider.
        authentication_methods: nil,
        # `true` if the integration is in a beta state, `false` otherwise
        beta: nil,
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
        primary_color: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            display_name: String,
            products: T::Array[String],
            authentication_methods:
              T::Array[
                FinchAPI::Models::ProviderListResponse::AuthenticationMethod
              ],
            beta: T::Boolean,
            icon: String,
            logo: String,
            manual: T::Boolean,
            mfa_required: T::Boolean,
            primary_color: String
          }
        )
      end
      def to_hash
      end

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod,
              FinchAPI::Internal::AnyHash
            )
          end

        # The type of authentication method
        sig do
          returns(
            FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The supported benefit types and their configurations
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
        attr_reader :benefits_support

        sig do
          params(benefits_support: T::Hash[Symbol, T.nilable(T.anything)]).void
        end
        attr_writer :benefits_support

        # The supported fields for each Finch product
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
        attr_reader :supported_fields

        sig do
          params(supported_fields: T::Hash[Symbol, T.nilable(T.anything)]).void
        end
        attr_writer :supported_fields

        sig do
          params(
            type:
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::OrSymbol,
            benefits_support: T::Hash[Symbol, T.nilable(T.anything)],
            supported_fields: T::Hash[Symbol, T.nilable(T.anything)]
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of authentication method
          type:,
          # The supported benefit types and their configurations
          benefits_support: nil,
          # The supported fields for each Finch product
          supported_fields: nil
        )
        end

        sig do
          override.returns(
            {
              type:
                FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol,
              benefits_support: T::Hash[Symbol, T.nilable(T.anything)],
              supported_fields: T::Hash[Symbol, T.nilable(T.anything)]
            }
          )
        end
        def to_hash
        end

        # The type of authentication method
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSISTED =
            T.let(
              :assisted,
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
            )
          CREDENTIAL =
            T.let(
              :credential,
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
            )
          API_TOKEN =
            T.let(
              :api_token,
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
            )
          API_CREDENTIAL =
            T.let(
              :api_credential,
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
            )
          OAUTH =
            T.let(
              :oauth,
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
            )
          API =
            T.let(
              :api,
              FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type::TaggedSymbol
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
