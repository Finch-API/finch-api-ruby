# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The type of job to start.
        sig { returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol) }
        def type
        end

        sig do
          params(_: FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol)
            .returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol)
        end
        def type=(_)
        end

        sig { returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Params) }
        def params
        end

        sig do
          params(_: T.any(FinchAPI::Models::Jobs::AutomatedCreateParams::Params, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::Jobs::AutomatedCreateParams::Params, FinchAPI::Util::AnyHash))
        end
        def params=(_)
        end

        sig do
          params(
            type: FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol,
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
                type: FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol,
                params: FinchAPI::Models::Jobs::AutomatedCreateParams::Params,
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The type of job to start.
        module Type
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::AutomatedCreateParams::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Jobs::AutomatedCreateParams::Type::TaggedSymbol) }

          W4_FORM_EMPLOYEE_SYNC =
            T.let(:w4_form_employee_sync, FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol)
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
