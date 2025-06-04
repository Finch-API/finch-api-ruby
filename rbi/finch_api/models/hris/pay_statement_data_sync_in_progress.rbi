# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementDataSyncInProgress < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::PayStatementDataSyncInProgress,
              FinchAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            FinchAPI::HRIS::PayStatementDataSyncInProgress::Code::TaggedFloat
          )
        end
        attr_accessor :code

        sig do
          returns(
            FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode::TaggedSymbol
          )
        end
        attr_accessor :finch_code

        sig do
          returns(
            FinchAPI::HRIS::PayStatementDataSyncInProgress::Message::TaggedSymbol
          )
        end
        attr_accessor :message

        sig do
          returns(
            FinchAPI::HRIS::PayStatementDataSyncInProgress::Name::TaggedSymbol
          )
        end
        attr_accessor :name

        sig do
          params(
            code: FinchAPI::HRIS::PayStatementDataSyncInProgress::Code::OrFloat,
            finch_code:
              FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode::OrSymbol,
            message:
              FinchAPI::HRIS::PayStatementDataSyncInProgress::Message::OrSymbol,
            name: FinchAPI::HRIS::PayStatementDataSyncInProgress::Name::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(code:, finch_code:, message:, name:)
        end

        sig do
          override.returns(
            {
              code:
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Code::TaggedFloat,
              finch_code:
                FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode::TaggedSymbol,
              message:
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Message::TaggedSymbol,
              name:
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Name::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Code
          extend FinchAPI::Internal::Type::Enum

          TaggedFloat =
            T.type_alias do
              T.all(Float, FinchAPI::HRIS::PayStatementDataSyncInProgress::Code)
            end
          OrFloat = T.type_alias { Float }

          CODE_202 =
            T.let(
              202,
              FinchAPI::HRIS::PayStatementDataSyncInProgress::Code::TaggedFloat
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Code::TaggedFloat
              ]
            )
          end
          def self.values
          end
        end

        module FinchCode
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATA_SYNC_IN_PROGRESS =
            T.let(
              :data_sync_in_progress,
              FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Message
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Message
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          THE_PAY_STATEMENTS_FOR_THIS_PAYMENT_ARE_BEING_FETCHED_PLEASE_CHECK_BACK_LATER =
            T.let(
              :"The pay statements for this payment are being fetched. Please check back later.",
              FinchAPI::HRIS::PayStatementDataSyncInProgress::Message::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Message::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Name
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Name
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTED =
            T.let(
              :accepted,
              FinchAPI::HRIS::PayStatementDataSyncInProgress::Name::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::HRIS::PayStatementDataSyncInProgress::Name::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
