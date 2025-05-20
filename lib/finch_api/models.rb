# frozen_string_literal: true

module FinchAPI
  [FinchAPI::Internal::Type::BaseModel, *FinchAPI::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, FinchAPI::Internal::AnyHash) } }
  end

  FinchAPI::Internal::Util.walk_namespaces(FinchAPI::Models).each do |mod|
    case mod
    in FinchAPI::Internal::Type::Enum | FinchAPI::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, mod) } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, mod) } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, mod) } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, mod) } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  FinchAPI::Internal::Util.walk_namespaces(FinchAPI::Models)
                          .lazy
                          .grep(FinchAPI::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccessTokenCreateParams = FinchAPI::Models::AccessTokenCreateParams

  AccountDisconnectParams = FinchAPI::Models::AccountDisconnectParams

  AccountIntrospectParams = FinchAPI::Models::AccountIntrospectParams

  AccountUpdateEvent = FinchAPI::Models::AccountUpdateEvent

  BaseWebhookEvent = FinchAPI::Models::BaseWebhookEvent

  CompanyEvent = FinchAPI::Models::CompanyEvent

  Connect = FinchAPI::Models::Connect

  ConnectionStatusType = FinchAPI::Models::ConnectionStatusType

  CreateAccessTokenResponse = FinchAPI::Models::CreateAccessTokenResponse

  DirectoryEvent = FinchAPI::Models::DirectoryEvent

  DisconnectResponse = FinchAPI::Models::DisconnectResponse

  EmploymentEvent = FinchAPI::Models::EmploymentEvent

  HRIS = FinchAPI::Models::HRIS

  Income = FinchAPI::Models::Income

  IndividualEvent = FinchAPI::Models::IndividualEvent

  Introspection = FinchAPI::Models::Introspection

  JobCompletionEvent = FinchAPI::Models::JobCompletionEvent

  Jobs = FinchAPI::Models::Jobs

  Location = FinchAPI::Models::Location

  Money = FinchAPI::Models::Money

  OperationSupport = FinchAPI::Models::OperationSupport

  OperationSupportMatrix = FinchAPI::Models::OperationSupportMatrix

  Paging = FinchAPI::Models::Paging

  PaymentEvent = FinchAPI::Models::PaymentEvent

  Payroll = FinchAPI::Models::Payroll

  PayStatementEvent = FinchAPI::Models::PayStatementEvent

  Provider = FinchAPI::Models::Provider

  ProviderListParams = FinchAPI::Models::ProviderListParams

  RequestForwardingForwardParams = FinchAPI::Models::RequestForwardingForwardParams

  Sandbox = FinchAPI::Models::Sandbox

  WebhookEvent = FinchAPI::Models::WebhookEvent
end
