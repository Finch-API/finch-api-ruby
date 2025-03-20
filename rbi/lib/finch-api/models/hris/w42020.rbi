# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42020 < FinchAPI::BaseModel
        # Detailed information specific to the 2020 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42020::Data)) }
        def data
        end

        sig do
          params(_: T.any(FinchAPI::Models::HRIS::W42020::Data, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::HRIS::W42020::Data, FinchAPI::Util::AnyHash))
        end
        def data=(_)
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol)) }
        def type
        end

        sig do
          params(_: FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol)
            .returns(FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol)
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

        # A 2020 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        sig do
          params(
            data: FinchAPI::Models::HRIS::W42020::Data,
            type: FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol,
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
                data: FinchAPI::Models::HRIS::W42020::Data,
                type: FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol,
                year: T.nilable(Float)
              }
            )
        end
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
          sig { returns(T.nilable(FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol)) }
          def filing_status
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol))
              .returns(T.nilable(FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol))
          end
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
              filing_status: T.nilable(FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol),
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
                  filing_status: T.nilable(FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol),
                  individual_id: String,
                  other_income: T.nilable(Integer),
                  total_claim_dependent_and_other_credits: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          # The individual's filing status for tax purposes.
          module FilingStatus
            extend FinchAPI::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42020::Data::FilingStatus) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol) }

            HEAD_OF_HOUSEHOLD =
              T.let(:head_of_household, FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol)
            MARRIED_FILING_JOINTLY_OR_QUALIFYING_SURVIVING_SPOUSE =
              T.let(
                :married_filing_jointly_or_qualifying_surviving_spouse,
                FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol
              )
            SINGLE_OR_MARRIED_FILING_SEPARATELY =
              T.let(
                :single_or_married_filing_separately,
                FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol
              )

            class << self
              sig { override.returns(T::Array[FinchAPI::Models::HRIS::W42020::Data::FilingStatus::TaggedSymbol]) }
              def values
              end
            end
          end
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        module Type
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::W42020::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol) }

          W4_2020 = T.let(:w4_2020, FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::HRIS::W42020::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
