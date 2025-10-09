# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42020 < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::W42020, FinchAPI::Internal::AnyHash)
          end

        # Detailed information specific to the 2020 W4 form.
        sig { returns(FinchAPI::HRIS::W42020::Data) }
        attr_reader :data

        sig { params(data: FinchAPI::HRIS::W42020::Data::OrHash).void }
        attr_writer :data

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        sig { returns(FinchAPI::HRIS::W42020::Type::TaggedSymbol) }
        attr_accessor :type

        # The tax year this W4 document applies to.
        sig { returns(Float) }
        attr_accessor :year

        # A 2020 version of the W-4 tax form containing information on an individual's
        # filing status, dependents, and withholding details.
        sig do
          params(
            data: FinchAPI::HRIS::W42020::Data::OrHash,
            type: FinchAPI::HRIS::W42020::Type::OrSymbol,
            year: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Detailed information specific to the 2020 W4 form.
          data:,
          # Specifies the form type, indicating that this document is a 2020 W4 form.
          type:,
          # The tax year this W4 document applies to.
          year:
        )
        end

        sig do
          override.returns(
            {
              data: FinchAPI::HRIS::W42020::Data,
              type: FinchAPI::HRIS::W42020::Type::TaggedSymbol,
              year: Float
            }
          )
        end
        def to_hash
        end

        class Data < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(FinchAPI::HRIS::W42020::Data, FinchAPI::Internal::AnyHash)
            end

          # Amount claimed for dependents other than qualifying children under 17 (in
          # cents).
          sig { returns(Integer) }
          attr_accessor :amount_for_other_dependents

          # Amount claimed for dependents under 17 years old (in cents).
          sig { returns(Integer) }
          attr_accessor :amount_for_qualifying_children_under_17

          # Deductible expenses (in cents).
          sig { returns(Integer) }
          attr_accessor :deductions

          # Additional withholding amount (in cents).
          sig { returns(Integer) }
          attr_accessor :extra_withholding

          # The individual's filing status for tax purposes.
          sig do
            returns(
              T.nilable(
                FinchAPI::HRIS::W42020::Data::FilingStatus::TaggedSymbol
              )
            )
          end
          attr_accessor :filing_status

          # The unique identifier for the individual associated with this document.
          sig { returns(String) }
          attr_accessor :individual_id

          # Additional income from sources outside of primary employment (in cents).
          sig { returns(Integer) }
          attr_accessor :other_income

          # Total amount claimed for dependents and other credits (in cents).
          sig { returns(Integer) }
          attr_accessor :total_claim_dependent_and_other_credits

          # Detailed information specific to the 2020 W4 form.
          sig do
            params(
              amount_for_other_dependents: Integer,
              amount_for_qualifying_children_under_17: Integer,
              deductions: Integer,
              extra_withholding: Integer,
              filing_status:
                T.nilable(FinchAPI::HRIS::W42020::Data::FilingStatus::OrSymbol),
              individual_id: String,
              other_income: Integer,
              total_claim_dependent_and_other_credits: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Amount claimed for dependents other than qualifying children under 17 (in
            # cents).
            amount_for_other_dependents:,
            # Amount claimed for dependents under 17 years old (in cents).
            amount_for_qualifying_children_under_17:,
            # Deductible expenses (in cents).
            deductions:,
            # Additional withholding amount (in cents).
            extra_withholding:,
            # The individual's filing status for tax purposes.
            filing_status:,
            # The unique identifier for the individual associated with this document.
            individual_id:,
            # Additional income from sources outside of primary employment (in cents).
            other_income:,
            # Total amount claimed for dependents and other credits (in cents).
            total_claim_dependent_and_other_credits:
          )
          end

          sig do
            override.returns(
              {
                amount_for_other_dependents: Integer,
                amount_for_qualifying_children_under_17: Integer,
                deductions: Integer,
                extra_withholding: Integer,
                filing_status:
                  T.nilable(
                    FinchAPI::HRIS::W42020::Data::FilingStatus::TaggedSymbol
                  ),
                individual_id: String,
                other_income: Integer,
                total_claim_dependent_and_other_credits: Integer
              }
            )
          end
          def to_hash
          end

          # The individual's filing status for tax purposes.
          module FilingStatus
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, FinchAPI::HRIS::W42020::Data::FilingStatus)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HEAD_OF_HOUSEHOLD =
              T.let(
                :head_of_household,
                FinchAPI::HRIS::W42020::Data::FilingStatus::TaggedSymbol
              )
            MARRIED_FILING_JOINTLY_OR_QUALIFYING_SURVIVING_SPOUSE =
              T.let(
                :married_filing_jointly_or_qualifying_surviving_spouse,
                FinchAPI::HRIS::W42020::Data::FilingStatus::TaggedSymbol
              )
            SINGLE_OR_MARRIED_FILING_SEPARATELY =
              T.let(
                :single_or_married_filing_separately,
                FinchAPI::HRIS::W42020::Data::FilingStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::W42020::Data::FilingStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::HRIS::W42020::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          W4_2020 = T.let(:w4_2020, FinchAPI::HRIS::W42020::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::W42020::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
