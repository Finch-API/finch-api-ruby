# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class SandboxJobConfiguration < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          sig do
            returns(
              FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
            )
          end
          attr_accessor :completion_status

          sig do
            returns(
              FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              completion_status:
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::OrSymbol,
              type:
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(completion_status:, type:)
          end

          sig do
            override.returns(
              {
                completion_status:
                  FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol,
                type:
                  FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module CompletionStatus
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMPLETE =
              T.let(
                :complete,
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
              )
            REAUTH_ERROR =
              T.let(
                :reauth_error,
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
              )
            PERMISSIONS_ERROR =
              T.let(
                :permissions_error,
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Type
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DATA_SYNC_ALL =
              T.let(
                :data_sync_all,
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol
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
end
