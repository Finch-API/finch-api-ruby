# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Params) }
        def params
        end

        sig do
          params(_: FinchAPI::Models::Jobs::AutomatedCreateParams::Params)
            .returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Params)
        end
        def params=(_)
        end

        sig do
          params(
            type: Symbol,
            params: FinchAPI::Models::Jobs::AutomatedCreateParams::Params,
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(type:, params:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                type: Symbol,
                params: FinchAPI::Models::Jobs::AutomatedCreateParams::Params,
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Type < FinchAPI::Enum
          abstract!

          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Params < FinchAPI::BaseModel
          sig { returns(String) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { params(individual_id: String).void }
          def initialize(individual_id:)
          end

          sig { override.returns({individual_id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
