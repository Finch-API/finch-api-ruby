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

          sig { params(completion_status: Symbol, type: Symbol).returns(T.attached_class) }
          def self.new(completion_status:, type:)
          end

          sig { override.returns({completion_status: Symbol, type: Symbol}) }
          def to_hash
          end

          class CompletionStatus < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            COMPLETE = :complete
            REAUTH_ERROR = :reauth_error
            PERMISSIONS_ERROR = :permissions_error
            ERROR = :error
          end

          class Type < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            DATA_SYNC_ALL = :data_sync_all
          end
        end
      end
    end
  end
end
