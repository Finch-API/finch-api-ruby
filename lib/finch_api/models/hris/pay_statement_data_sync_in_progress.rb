# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatementDataSyncInProgress < FinchAPI::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [Float, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::Code]
        required :code, enum: -> { FinchAPI::HRIS::PayStatementDataSyncInProgress::Code }

        # @!attribute finch_code
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::FinchCode]
        required :finch_code, enum: -> { FinchAPI::HRIS::PayStatementDataSyncInProgress::FinchCode }

        # @!attribute message
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::Message]
        required :message, enum: -> { FinchAPI::HRIS::PayStatementDataSyncInProgress::Message }

        # @!attribute name
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::Name]
        required :name, enum: -> { FinchAPI::HRIS::PayStatementDataSyncInProgress::Name }

        # @!method initialize(code:, finch_code:, message:, name:)
        #   @param code [Float, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::Code]
        #   @param finch_code [Symbol, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::FinchCode]
        #   @param message [Symbol, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::Message]
        #   @param name [Symbol, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress::Name]

        # @see FinchAPI::Models::HRIS::PayStatementDataSyncInProgress#code
        module Code
          extend FinchAPI::Internal::Type::Enum

          CODE_202 = 202

          # @!method self.values
          #   @return [Array<Float>]
        end

        # @see FinchAPI::Models::HRIS::PayStatementDataSyncInProgress#finch_code
        module FinchCode
          extend FinchAPI::Internal::Type::Enum

          DATA_SYNC_IN_PROGRESS = :data_sync_in_progress

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see FinchAPI::Models::HRIS::PayStatementDataSyncInProgress#message
        module Message
          extend FinchAPI::Internal::Type::Enum

          THE_PAY_STATEMENTS_FOR_THIS_PAYMENT_ARE_BEING_FETCHED_PLEASE_CHECK_BACK_LATER =
            :"The pay statements for this payment are being fetched. Please check back later."

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see FinchAPI::Models::HRIS::PayStatementDataSyncInProgress#name
        module Name
          extend FinchAPI::Internal::Type::Enum

          ACCEPTED = :accepted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
