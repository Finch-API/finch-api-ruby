# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::BaseModel
        extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The type of job to start.
        sig { returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(FinchAPI::Models::Jobs::AutomatedCreateParams::Params) }
        attr_reader :params

        sig { params(params: T.any(FinchAPI::Models::Jobs::AutomatedCreateParams::Params, FinchAPI::Util::AnyHash)).void }
        attr_writer :params

        sig do
          params(
            type: FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol,
            params: T.any(FinchAPI::Models::Jobs::AutomatedCreateParams::Params, FinchAPI::Util::AnyHash),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
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
            T.let(:w4_form_employee_sync, FinchAPI::Models::Jobs::AutomatedCreateParams::Type::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Jobs::AutomatedCreateParams::Type::TaggedSymbol]) }
          def self.values
          end
        end

        class Params < FinchAPI::BaseModel
          # The unique ID of the individual for W-4 data sync.
          sig { returns(String) }
          attr_accessor :individual_id

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
