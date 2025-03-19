# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42020 < FinchAPI::BaseModel
        # Detailed information specific to the 2020 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42020::Data)) }
        def data
        end

        sig { params(_: FinchAPI::Models::HRIS::W42020::Data).returns(FinchAPI::Models::HRIS::W42020::Data) }
        def data=(_)
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # The tax year this W4 document applies to.
        sig { returns(T.nilable(Float)) }
        def year
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def year=(_)
        end

        # A 2020 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        sig do
          params(data: FinchAPI::Models::HRIS::W42020::Data, type: Symbol, year: T.nilable(Float))
            .returns(T.attached_class)
        end
        def self.new(data: nil, type: nil, year: nil)
        end

        sig { override.returns({data: FinchAPI::Models::HRIS::W42020::Data, type: Symbol, year: T.nilable(Float)}) }
        def to_hash
        end

        class Data < FinchAPI::BaseModel
          # Amount claimed for dependents other than qualifying children under 17 (in
          #   cents).
          sig { returns(T.nilable(Integer)) }
          def amount_for_other_dependents
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_for_other_dependents=(_)
          end

          # Amount claimed for dependents under 17 years old (in cents).
          sig { returns(T.nilable(Integer)) }
          def amount_for_qualifying_children_under_17
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_for_qualifying_children_under_17=(_)
          end

          # Deductible expenses (in cents).
          sig { returns(T.nilable(Integer)) }
          def deductions
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def deductions=(_)
          end

          # Additional withholding amount (in cents).
          sig { returns(T.nilable(Integer)) }
          def extra_withholding
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def extra_withholding=(_)
          end

          # The individual's filing status for tax purposes.
          sig { returns(T.nilable(Symbol)) }
          def filing_status
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def filing_status=(_)
          end

          # The unique identifier for the individual associated with this document.
          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          # Additional income from sources outside of primary employment (in cents).
          sig { returns(T.nilable(Integer)) }
          def other_income
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def other_income=(_)
          end

          # Total amount claimed for dependents and other credits (in cents).
          sig { returns(T.nilable(Integer)) }
          def total_claim_dependent_and_other_credits
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_claim_dependent_and_other_credits=(_)
          end

          # Detailed information specific to the 2020 W4 form.
          sig do
            params(
              amount_for_other_dependents: T.nilable(Integer),
              amount_for_qualifying_children_under_17: T.nilable(Integer),
              deductions: T.nilable(Integer),
              extra_withholding: T.nilable(Integer),
              filing_status: T.nilable(Symbol),
              individual_id: String,
              other_income: T.nilable(Integer),
              total_claim_dependent_and_other_credits: T.nilable(Integer)
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount_for_other_dependents: nil,
            amount_for_qualifying_children_under_17: nil,
            deductions: nil,
            extra_withholding: nil,
            filing_status: nil,
            individual_id: nil,
            other_income: nil,
            total_claim_dependent_and_other_credits: nil
          )
          end

          sig do
            override
              .returns(
                {
                  amount_for_other_dependents: T.nilable(Integer),
                  amount_for_qualifying_children_under_17: T.nilable(Integer),
                  deductions: T.nilable(Integer),
                  extra_withholding: T.nilable(Integer),
                  filing_status: T.nilable(Symbol),
                  individual_id: String,
                  other_income: T.nilable(Integer),
                  total_claim_dependent_and_other_credits: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          # The individual's filing status for tax purposes.
          class FilingStatus < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            HEAD_OF_HOUSEHOLD = :head_of_household
            MARRIED_FILING_JOINTLY_OR_QUALIFYING_SURVIVING_SPOUSE =
              :married_filing_jointly_or_qualifying_surviving_spouse
            SINGLE_OR_MARRIED_FILING_SEPARATELY = :single_or_married_filing_separately
          end
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        class Type < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          W4_2020 = :w4_2020
        end
      end
    end
  end
end
