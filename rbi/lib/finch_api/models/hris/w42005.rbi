# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42005 < FinchAPI::Internal::Type::BaseModel
        # Detailed information specific to the 2005 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data)) }
        attr_reader :data

        sig { params(data: T.any(FinchAPI::Models::HRIS::W42005::Data, FinchAPI::Internal::AnyHash)).void }
        attr_writer :data

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: FinchAPI::Models::HRIS::W42005::Type::OrSymbol).void }
        attr_writer :type

        # The tax year this W4 document applies to.
        sig { returns(T.nilable(Float)) }
        attr_accessor :year

        # A 2005 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        sig do
          params(
            data: T.any(FinchAPI::Models::HRIS::W42005::Data, FinchAPI::Internal::AnyHash),
            type: FinchAPI::Models::HRIS::W42005::Type::OrSymbol,
            year: T.nilable(Float)
          )
            .returns(T.attached_class)
        end
        def self.new(data: nil, type: nil, year: nil); end

        sig do
          override
            .returns(
              {
                data: FinchAPI::Models::HRIS::W42005::Data,
                type: FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol,
                year: T.nilable(Float)
              }
            )
        end
        def to_hash; end

        class Data < FinchAPI::Internal::Type::BaseModel
          # Additional withholding amount (in cents).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :additional_withholding

          # Indicates exemption status from federal tax withholding.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)) }
          attr_reader :exemption

          sig { params(exemption: FinchAPI::Models::HRIS::W42005::Data::Exemption::OrSymbol).void }
          attr_writer :exemption

          # The individual's filing status for tax purposes.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)) }
          attr_accessor :filing_status

          # The unique identifier for the individual associated with this 2005 W4 form.
          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          # Total number of allowances claimed (in cents).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :total_number_of_allowances

          # Detailed information specific to the 2005 W4 form.
          sig do
            params(
              additional_withholding: T.nilable(Integer),
              exemption: FinchAPI::Models::HRIS::W42005::Data::Exemption::OrSymbol,
              filing_status: T.nilable(FinchAPI::Models::HRIS::W42005::Data::FilingStatus::OrSymbol),
              individual_id: String,
              total_number_of_allowances: T.nilable(Integer)
            )
              .returns(T.attached_class)
          end
          def self.new(
            additional_withholding: nil,
            exemption: nil,
            filing_status: nil,
            individual_id: nil,
            total_number_of_allowances: nil
          ); end
          sig do
            override
              .returns(
                {
                  additional_withholding: T.nilable(Integer),
                  exemption: FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol,
                  filing_status: T.nilable(FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol),
                  individual_id: String,
                  total_number_of_allowances: T.nilable(Integer)
                }
              )
          end
          def to_hash; end

          # Indicates exemption status from federal tax withholding.
          module Exemption
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol) }

            EXEMPT = T.let(:exempt, FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)
            NON_EXEMPT = T.let(:non_exempt, FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol]) }
            def self.values; end
          end

          # The individual's filing status for tax purposes.
          module FilingStatus
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol) }

            MARRIED = T.let(:married, FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)
            MARRIED_BUT_WITHHOLD_AT_HIGHER_SINGLE_RATE =
              T.let(
                :married_but_withhold_at_higher_single_rate,
                FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol
              )
            SINGLE = T.let(:single, FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)

            sig { override.returns(T::Array[FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol]) }
            def self.values; end
          end
        end

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42005::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol) }

          W4_2005 = T.let(:w4_2005, FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
