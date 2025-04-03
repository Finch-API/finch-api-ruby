# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class EnrolledIndividual < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body)) }
          attr_reader :body

          sig do
            params(
              body: T.any(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, FinchAPI::Internal::AnyHash)
            )
              .void
          end
          attr_writer :body

          # HTTP status code. Either 201 or 200
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)) }
          attr_reader :code

          sig { params(code: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::OrInteger).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          sig do
            params(
              body: T.any(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, FinchAPI::Internal::AnyHash),
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

          class Body < FinchAPI::Internal::Type::BaseModel
            # A descriptive identifier for the response.
            sig { returns(T.nilable(String)) }
            attr_accessor :finch_code

            # Short description in English that provides more information about the response.
            sig { returns(T.nilable(String)) }
            attr_accessor :message

            # Identifier indicating whether the benefit was newly enrolled or updated.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

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
            extend FinchAPI::Internal::Type::Enum

            TaggedInteger =
              T.type_alias { T.all(Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code) }
            OrInteger =
              T.type_alias { T.any(Integer, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger) }

            OK = T.let(200, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)
            CREATED = T.let(201, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)
            NOT_FOUND = T.let(404, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)
            FORBIDDEN = T.let(403, FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code::TaggedInteger]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
