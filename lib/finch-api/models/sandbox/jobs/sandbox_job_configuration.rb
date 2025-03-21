# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class SandboxJobConfiguration < FinchAPI::BaseModel
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

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          module CompletionStatus
            extend FinchAPI::Enum

            COMPLETE = :complete
            REAUTH_ERROR = :reauth_error
            PERMISSIONS_ERROR = :permissions_error
            ERROR = :error

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          module Type
            extend FinchAPI::Enum

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
