# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42020 < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42020::Data)) }
        def data
        end

        sig { params(_: FinchAPI::Models::HRIS::W42020::Data).returns(FinchAPI::Models::HRIS::W42020::Data) }
        def data=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(Float)) }
        def year
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def year=(_)
        end

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
          sig { returns(T.nilable(Integer)) }
          def amount_for_other_dependents
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_for_other_dependents=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def amount_for_qualifying_children_under_17
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_for_qualifying_children_under_17=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def deductions
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def deductions=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def extra_withholding
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def extra_withholding=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def filing_status
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def filing_status=(_)
          end

          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def other_income
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def other_income=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def total_claim_dependent_and_other_credits
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_claim_dependent_and_other_credits=(_)
          end

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

          class FilingStatus < FinchAPI::Enum
            abstract!

            HEAD_OF_HOUSEHOLD = T.let(:head_of_household, T.nilable(Symbol))
            MARRIED_FILING_JOINTLY_OR_QUALIFYING_SURVIVING_SPOUSE = T.let(
              :married_filing_jointly_or_qualifying_surviving_spouse, T.nilable(Symbol)
            )
            SINGLE_OR_MARRIED_FILING_SEPARATELY = T.let(
              :single_or_married_filing_separately,
              T.nilable(Symbol)
            )

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Type < FinchAPI::Enum
          abstract!

          W4_2020 = :w4_2020

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
