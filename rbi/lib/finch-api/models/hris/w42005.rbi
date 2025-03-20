# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42005 < FinchAPI::BaseModel
        # Detailed information specific to the 2005 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data)) }
        def data
        end

        sig { params(_: FinchAPI::Models::HRIS::W42005::Data).returns(FinchAPI::Models::HRIS::W42005::Data) }
        def data=(_)
        end

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol)) }
        def type
        end

        sig do
          params(_: FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol)
            .returns(FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # The tax year this W4 document applies to.
        sig { returns(T.nilable(Float)) }
        def year
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def year=(_)
        end

        # A 2005 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        sig do
          params(
            data: FinchAPI::Models::HRIS::W42005::Data,
            type: FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol,
            year: T.nilable(Float)
          )
            .returns(T.attached_class)
        end
        def self.new(data: nil, type: nil, year: nil)
        end

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
        def to_hash
        end

        class Data < FinchAPI::BaseModel
          # Additional withholding amount (in cents).
          sig { returns(T.nilable(Integer)) }
          def additional_withholding
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def additional_withholding=(_)
          end

          # Indicates exemption status from federal tax withholding.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)) }
          def exemption
          end

          sig do
            params(_: FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)
              .returns(FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)
          end
          def exemption=(_)
          end

          # The individual's filing status for tax purposes.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)) }
          def filing_status
          end

          sig do
            params(_: FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)
              .returns(FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)
          end
          def filing_status=(_)
          end

          # The unique identifier for the individual associated with this 2005 W4 form.
          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          # Total number of allowances claimed (in cents).
          sig { returns(T.nilable(Integer)) }
          def total_number_of_allowances
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_number_of_allowances=(_)
          end

          # Detailed information specific to the 2005 W4 form.
          sig do
            params(
              additional_withholding: T.nilable(Integer),
              exemption: FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol,
              filing_status: FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol,
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
          )
          end

          sig do
            override
              .returns(
                {
                  additional_withholding: T.nilable(Integer),
                  exemption: FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol,
                  filing_status: FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol,
                  individual_id: String,
                  total_number_of_allowances: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          # Indicates exemption status from federal tax withholding.
          module Exemption
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption) }
            OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol) }

            EXEMPT = T.let(:exempt, FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)
            NON_EXEMPT = T.let(:non_exempt, FinchAPI::Models::HRIS::W42005::Data::Exemption::TaggedSymbol)
          end

          # The individual's filing status for tax purposes.
          module FilingStatus
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol) }

            MARRIED = T.let(:married, FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)
            MARRIED_BUT_WITHHOLD_AT_HIGHER_SINGLE_RATE =
              T.let(
                :married_but_withhold_at_higher_single_rate,
                FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol
              )
            SINGLE = T.let(:single, FinchAPI::Models::HRIS::W42005::Data::FilingStatus::TaggedSymbol)
          end
        end

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        module Type
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42005::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol) }

          W4_2005 = T.let(:w4_2005, FinchAPI::Models::HRIS::W42005::Type::TaggedSymbol)
        end
      end
    end
  end
end
