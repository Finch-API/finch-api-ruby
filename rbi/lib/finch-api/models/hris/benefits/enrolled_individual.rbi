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
            params(_: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body)
              .returns(FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body)
          end
          def body=(_)
          end

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
              body: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body,
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
                {body: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body, code: Integer, individual_id: String}
              )
          end
          def to_hash
          end

          class Body < FinchAPI::BaseModel
            sig { returns(T.nilable(String)) }
            def finch_code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def finch_code=(_)
            end

            sig { returns(T.nilable(String)) }
            def message
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def message=(_)
            end

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

          class Code < FinchAPI::Enum
            abstract!

            OK = 200
            CREATED = 201
            NOT_FOUND = 404
            FORBIDDEN = 403

            class << self
              sig { override.returns(T::Array[Integer]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
