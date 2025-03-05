# typed: strong

module FinchAPI
  module Models
    module HRIS
      class W42005 < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::W42005::Data)) }
        def data
        end

        sig { params(_: FinchAPI::Models::HRIS::W42005::Data).returns(FinchAPI::Models::HRIS::W42005::Data) }
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

        sig { params(data: FinchAPI::Models::HRIS::W42005::Data, type: Symbol, year: T.nilable(Float)).void }
        def initialize(data: nil, type: nil, year: nil)
        end

        sig { override.returns({data: FinchAPI::Models::HRIS::W42005::Data, type: Symbol, year: T.nilable(Float)}) }
        def to_hash
        end

        class Data < FinchAPI::BaseModel
          sig { returns(T.nilable(Integer)) }
          def additional_withholding
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def additional_withholding=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def exemption
          end

          sig { params(_: Symbol).returns(Symbol) }
          def exemption=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def filing_status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def filing_status=(_)
          end

          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def total_number_of_allowances
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_number_of_allowances=(_)
          end

          sig do
            params(
              additional_withholding: T.nilable(Integer),
              exemption: Symbol,
              filing_status: Symbol,
              individual_id: String,
              total_number_of_allowances: T.nilable(Integer)
            )
              .void
          end
          def initialize(
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

          class Exemption < FinchAPI::Enum
            abstract!

            EXEMPT = :exempt
            NON_EXEMPT = :non_exempt

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class FilingStatus < FinchAPI::Enum
            abstract!

            MARRIED = :married
            MARRIED_BUT_WITHHOLD_AT_HIGHER_SINGLE_RATE = :married_but_withhold_at_higher_single_rate
            SINGLE = :single

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Type < FinchAPI::Enum
          abstract!

          W4_2005 = :w4_2005

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
