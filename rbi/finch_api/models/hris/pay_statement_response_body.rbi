# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::PayStatementResponseBody,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(FinchAPI::HRIS::PayStatementResponseBody::Paging) }
        attr_reader :paging

        sig do
          params(
            paging: FinchAPI::HRIS::PayStatementResponseBody::Paging::OrHash
          ).void
        end
        attr_writer :paging

        sig { returns(T::Array[FinchAPI::HRIS::PayStatement]) }
        attr_accessor :pay_statements

        sig do
          params(
            paging: FinchAPI::HRIS::PayStatementResponseBody::Paging::OrHash,
            pay_statements: T::Array[FinchAPI::HRIS::PayStatement::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(paging:, pay_statements:)
        end

        sig do
          override.returns(
            {
              paging: FinchAPI::HRIS::PayStatementResponseBody::Paging,
              pay_statements: T::Array[FinchAPI::HRIS::PayStatement]
            }
          )
        end
        def to_hash
        end

        class Paging < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody::Paging,
                FinchAPI::Internal::AnyHash
              )
            end

          # The current start index of the returned list of elements
          sig { returns(Integer) }
          attr_accessor :offset

          # The total number of elements for the entire query (not just the given page)
          sig { returns(T.nilable(Integer)) }
          attr_reader :count

          sig { params(count: Integer).void }
          attr_writer :count

          sig do
            params(offset: Integer, count: Integer).returns(T.attached_class)
          end
          def self.new(
            # The current start index of the returned list of elements
            offset:,
            # The total number of elements for the entire query (not just the given page)
            count: nil
          )
          end

          sig { override.returns({ offset: Integer, count: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
