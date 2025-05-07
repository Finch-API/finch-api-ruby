# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The type of job to start.
        sig { returns(FinchAPI::Jobs::AutomatedCreateParams::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(FinchAPI::Jobs::AutomatedCreateParams::Params) }
        attr_reader :params

        sig do
          params(
            params: FinchAPI::Jobs::AutomatedCreateParams::Params::OrHash
          ).void
        end
        attr_writer :params

        sig do
          params(
            type: FinchAPI::Jobs::AutomatedCreateParams::Type::OrSymbol,
            params: FinchAPI::Jobs::AutomatedCreateParams::Params::OrHash,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of job to start.
          type:,
          params:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              type: FinchAPI::Jobs::AutomatedCreateParams::Type::OrSymbol,
              params: FinchAPI::Jobs::AutomatedCreateParams::Params,
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The type of job to start.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Jobs::AutomatedCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          W4_FORM_EMPLOYEE_SYNC =
            T.let(
              :w4_form_employee_sync,
              FinchAPI::Jobs::AutomatedCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Jobs::AutomatedCreateParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Params < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # The unique ID of the individual for W-4 data sync.
          sig { returns(String) }
          attr_accessor :individual_id

          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(
            # The unique ID of the individual for W-4 data sync.
            individual_id:
          )
          end

          sig { override.returns({ individual_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
