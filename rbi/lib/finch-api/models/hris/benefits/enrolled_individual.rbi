# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class EnrolledIndividual < FinchAPI::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body)) }
          def body
          end

          sig do
            params(_: T.any(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, FinchAPI::Util::AnyHash))
              .returns(T.any(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, FinchAPI::Util::AnyHash))
          end
          def body=(_)
          end

          # HTTP status code. Either 201 or 200
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)) }
          def code
          end

          sig do
            params(_: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::OrInteger)
              .returns(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::OrInteger)
          end
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
              body: T.any(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, FinchAPI::Util::AnyHash),
              code: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::OrInteger,
              individual_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(body: nil, code: nil, individual_id: nil)
          end

          sig do
            override
              .returns(
                {
                  body: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body,
                  code: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger,
                  individual_id: String
                }
              )
          end
          def to_hash
          end

          class Body < FinchAPI::BaseModel
            # A descriptive identifier for the response
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

          # HTTP status code. Either 201 or 200
          module Code
            extend FinchAPI::Enum

            TaggedInteger =
              T.type_alias { T.all(Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code) }
            OrInteger =
              T.type_alias { T.any(Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger) }

            OK = T.let(200, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)
            CREATED = T.let(201, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)
            NOT_FOUND = T.let(404, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)
            FORBIDDEN = T.let(403, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
