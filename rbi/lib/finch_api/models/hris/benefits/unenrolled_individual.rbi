# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class UnenrolledIndividual < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body)) }
          attr_reader :body

          sig do
            params(
              body: T.any(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, FinchAPI::Internal::AnyHash)
            )
              .void
          end
          attr_writer :body

          # HTTP status code
          sig { returns(T.nilable(Integer)) }
          attr_reader :code

          sig { params(code: Integer).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          sig do
            params(
              body: T.any(FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, FinchAPI::Internal::AnyHash),
              code: Integer,
              individual_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(body: nil, code: nil, individual_id: nil); end

          sig do
            override
              .returns(
                {body: FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body, code: Integer, individual_id: String}
              )
          end
          def to_hash; end

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
            def self.new(finch_code: nil, message: nil, name: nil); end

            sig do
              override.returns(
                {
                  finch_code: T.nilable(String),
                  message: T.nilable(String),
                  name: T.nilable(String)
                }
              )
            end
            def to_hash; end
          end
        end
      end
    end
  end
end
