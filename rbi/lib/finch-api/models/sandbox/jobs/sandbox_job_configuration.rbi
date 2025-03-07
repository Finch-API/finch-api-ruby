# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class SandboxJobConfiguration < FinchAPI::BaseModel
          sig { returns(Symbol) }
          def completion_status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def completion_status=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(completion_status: Symbol, type: Symbol).void }
          def initialize(completion_status:, type:)
          end

          sig { override.returns({completion_status: Symbol, type: Symbol}) }
          def to_hash
          end

          class CompletionStatus < FinchAPI::Enum
            abstract!

            COMPLETE = :complete
            REAUTH_ERROR = :reauth_error
            PERMISSIONS_ERROR = :permissions_error
            ERROR = :error

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < FinchAPI::Enum
            abstract!

            DATA_SYNC_ALL = :data_sync_all

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
