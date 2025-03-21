# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class UnenrolledIndividual < FinchAPI::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body)) }
          def body
          end

          sig do
            params(_: T.any(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, FinchAPI::Util::AnyHash))
              .returns(T.any(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, FinchAPI::Util::AnyHash))
          end
          def body=(_)
          end

          # HTTP status code
          sig { returns(T.nilable(Integer)) }
          def code
          end

          sig { params(_: Integer).returns(Integer) }
          def code=(_)
          end

          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig do
            params(
              body: T.any(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, FinchAPI::Util::AnyHash),
              code: Integer,
              individual_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(body: nil, code: nil, individual_id: nil)
          end

          sig do
            override
              .returns(
                {body: FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, code: Integer, individual_id: String}
              )
          end
          def to_hash
          end

          class Body < FinchAPI::BaseModel
            # A descriptive identifier for the response.
            sig { returns(T.nilable(String)) }
            def finch_code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def finch_code=(_)
            end

            # Short description in English that provides more information about the response.
            sig { returns(T.nilable(String)) }
            def message
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def message=(_)
            end

            # Identifier indicating whether the benefit was newly enrolled or updated.
            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_)
            end

            sig do
              params(finch_code: T.nilable(String), message: T.nilable(String), name: T.nilable(String))
                .returns(T.attached_class)
            end
            def self.new(finch_code: nil, message: nil, name: nil)
            end

            sig do
              override.returns(
                {
                  finch_code: T.nilable(String),
                  message: T.nilable(String),
                  name: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
