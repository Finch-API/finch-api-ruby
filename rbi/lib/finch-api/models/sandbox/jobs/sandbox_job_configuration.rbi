# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class SandboxJobConfiguration < FinchAPI::BaseModel
          sig { returns(FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol) }
          def completion_status
          end

          sig do
            params(_: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol)
              .returns(FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol)
          end
          def completion_status=(_)
          end

          sig { returns(FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol)
              .returns(FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol)
          end
          def type=(_)
          end

          sig do
            params(
              completion_status: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::OrSymbol,
              type: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(completion_status:, type:)
          end

          sig do
            override
              .returns(
                {
                  completion_status: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol,
                  type: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module CompletionStatus
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol) }

            COMPLETE =
              T.let(:complete, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol)
            REAUTH_ERROR =
              T.let(
                :reauth_error,
                FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
              )
            PERMISSIONS_ERROR =
              T.let(
                :permissions_error,
                FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol
              )
            ERROR =
              T.let(:error, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(
                    T::Array[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          module Type
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol) }

            DATA_SYNC_ALL =
              T.let(:data_sync_all, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::TaggedSymbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
