# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The type of job to start.
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
            .returns(T.attached_class)
        end
        def self.new(type:, params:, request_options: {})
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

        # The type of job to start.
        class Type < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync
        end

        class Params < FinchAPI::BaseModel
          # The unique ID of the individual for W-4 data sync.
          sig { returns(String) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(individual_id:)
          end

          sig { override.returns({individual_id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
