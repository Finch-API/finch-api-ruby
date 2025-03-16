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

        # A 2005 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        sig do
          params(data: FinchAPI::Models::HRIS::W42005::Data, type: Symbol, year: T.nilable(Float))
            .returns(T.attached_class)
        end
        def self.new(data: nil, type: nil, year: nil)
        end

        sig { override.returns({data: FinchAPI::Models::HRIS::W42005::Data, type: Symbol, year: T.nilable(Float)}) }
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
          sig { returns(T.nilable(Symbol)) }
          def exemption
          end

          sig { params(_: Symbol).returns(Symbol) }
          def exemption=(_)
          end

          # The individual's filing status for tax purposes.
          sig { returns(T.nilable(Symbol)) }
          def filing_status
          end

          sig { params(_: Symbol).returns(Symbol) }
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
              exemption: Symbol,
              filing_status: Symbol,
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
                  exemption: Symbol,
                  filing_status: Symbol,
                  individual_id: String,
                  total_number_of_allowances: T.nilable(Integer)
                }
              )
          end
          def to_hash
          end

          # Indicates exemption status from federal tax withholding.
          class Exemption < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            EXEMPT = :exempt
            NON_EXEMPT = :non_exempt
          end

          # The individual's filing status for tax purposes.
          class FilingStatus < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            MARRIED = :married
            MARRIED_BUT_WITHHOLD_AT_HIGHER_SINGLE_RATE = :married_but_withhold_at_higher_single_rate
            SINGLE = :single
          end
        end

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        class Type < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          W4_2005 = :w4_2005
        end
      end
    end
  end
end
