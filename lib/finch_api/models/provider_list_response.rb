# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Providers#list
    class ProviderListResponse < FinchAPI::Internal::Type::BaseModel
      # @!attribute id
      #   The id of the payroll provider used in Connect.
      #
      #   @return [String]
      required :id, String

      # @!attribute display_name
      #   The display name of the payroll provider.
      #
      #   @return [String]
      required :display_name, String

      # @!attribute products
      #   The list of Finch products supported on this payroll provider.
      #
      #   @return [Array<String>]
      required :products, FinchAPI::Internal::Type::ArrayOf[String]

      # @!attribute authentication_methods
      #   The authentication methods supported by the provider.
      #
      #   @return [Array<FinchAPI::Models::ProviderListResponse::AuthenticationMethod>, nil]
      optional :authentication_methods,
               -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::ProviderListResponse::AuthenticationMethod] }

      # @!attribute beta
      #   `true` if the integration is in a beta state, `false` otherwise
      #
      #   @return [Boolean, nil]
      optional :beta, FinchAPI::Internal::Type::Boolean

      # @!attribute icon
      #   The url to the official icon of the payroll provider.
      #
      #   @return [String, nil]
      optional :icon, String

      # @!attribute logo
      #   The url to the official logo of the payroll provider.
      #
      #   @return [String, nil]
      optional :logo, String

      # @!attribute manual
      #   @deprecated
      #
      #   [DEPRECATED] Whether the Finch integration with this provider uses the Assisted
      #   Connect Flow by default. This field is now deprecated. Please check for a `type`
      #   of `assisted` in the `authentication_methods` field instead.
      #
      #   @return [Boolean, nil]
      optional :manual, FinchAPI::Internal::Type::Boolean

      # @!attribute mfa_required
      #   whether MFA is required for the provider.
      #
      #   @return [Boolean, nil]
      optional :mfa_required, FinchAPI::Internal::Type::Boolean

      # @!attribute primary_color
      #   The hex code for the primary color of the payroll provider.
      #
      #   @return [String, nil]
      optional :primary_color, String

      # @!method initialize(id:, display_name:, products:, authentication_methods: nil, beta: nil, icon: nil, logo: nil, manual: nil, mfa_required: nil, primary_color: nil)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::ProviderListResponse} for more details.
      #
      #   @param id [String] The id of the payroll provider used in Connect.
      #
      #   @param display_name [String] The display name of the payroll provider.
      #
      #   @param products [Array<String>] The list of Finch products supported on this payroll provider.
      #
      #   @param authentication_methods [Array<FinchAPI::Models::ProviderListResponse::AuthenticationMethod>] The authentication methods supported by the provider.
      #
      #   @param beta [Boolean] `true` if the integration is in a beta state, `false` otherwise
      #
      #   @param icon [String] The url to the official icon of the payroll provider.
      #
      #   @param logo [String] The url to the official logo of the payroll provider.
      #
      #   @param manual [Boolean] [DEPRECATED] Whether the Finch integration with this provider uses the Assisted
      #
      #   @param mfa_required [Boolean] whether MFA is required for the provider.
      #
      #   @param primary_color [String] The hex code for the primary color of the payroll provider.

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        # @!attribute type
        #   The type of authentication method
        #
        #   @return [Symbol, FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type]
        required :type, enum: -> { FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type }

        # @!attribute benefits_support
        #   The supported benefit types and their configurations
        #
        #   @return [Hash{Symbol=>Object, nil}, nil]
        optional :benefits_support,
                 FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

        # @!attribute supported_fields
        #   The supported fields for each Finch product
        #
        #   @return [Hash{Symbol=>Object, nil}, nil]
        optional :supported_fields,
                 FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]

        # @!method initialize(type:, benefits_support: nil, supported_fields: nil)
        #   @param type [Symbol, FinchAPI::Models::ProviderListResponse::AuthenticationMethod::Type] The type of authentication method
        #
        #   @param benefits_support [Hash{Symbol=>Object, nil}] The supported benefit types and their configurations
        #
        #   @param supported_fields [Hash{Symbol=>Object, nil}] The supported fields for each Finch product

        # The type of authentication method
        #
        # @see FinchAPI::Models::ProviderListResponse::AuthenticationMethod#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          ASSISTED = :assisted
          CREDENTIAL = :credential
          API_TOKEN = :api_token
          API_CREDENTIAL = :api_credential
          OAUTH = :oauth
          API = :api

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
