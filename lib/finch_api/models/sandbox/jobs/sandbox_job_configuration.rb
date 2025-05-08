# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        # @see FinchAPI::Resources::Sandbox::Jobs::Configuration#update
        class SandboxJobConfiguration < FinchAPI::Internal::Type::BaseModel
          # @!attribute completion_status
          #
          #   @return [Symbol, FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus]
          required :completion_status,
                   enum: -> { FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus }

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type]
          required :type, enum: -> { FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type }

          # @!method initialize(completion_status:, type:)
          #   @param completion_status [Symbol, FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus]
          #   @param type [Symbol, FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type]

          # @see FinchAPI::Sandbox::Jobs::SandboxJobConfiguration#completion_status
          module CompletionStatus
            extend FinchAPI::Internal::Type::Enum

            COMPLETE = :complete
            REAUTH_ERROR = :reauth_error
            PERMISSIONS_ERROR = :permissions_error
            ERROR = :error

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see FinchAPI::Sandbox::Jobs::SandboxJobConfiguration#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            DATA_SYNC_ALL = :data_sync_all

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
