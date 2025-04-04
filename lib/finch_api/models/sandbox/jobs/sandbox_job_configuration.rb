# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        # @see FinchAPI::Resources::Sandbox::Jobs::Configuration#update
        class SandboxJobConfiguration < FinchAPI::Internal::Type::BaseModel
          # @!attribute completion_status
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus]
          required :completion_status,
                   enum: -> { FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus }

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type]
          required :type, enum: -> { FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type }

          # @!parse
          #   # @param completion_status [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type]
          #   #
          #   def initialize(completion_status:, type:, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration#completion_status
          module CompletionStatus
            extend FinchAPI::Internal::Type::Enum

            COMPLETE = :complete
            REAUTH_ERROR = :reauth_error
            PERMISSIONS_ERROR = :permissions_error
            ERROR = :error

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            DATA_SYNC_ALL = :data_sync_all

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
