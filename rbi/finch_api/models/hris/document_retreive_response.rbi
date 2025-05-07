# typed: strong

module FinchAPI
  module Models
    module HRIS
      # A 2020 version of the W-4 tax form containing information on an individual's
      # filing status, dependents, and withholding details.
      module DocumentRetreiveResponse
        extend FinchAPI::Internal::Type::Union

        Variants =
          T.type_alias { T.any(FinchAPI::HRIS::W42020, FinchAPI::HRIS::W42005) }

        sig do
          override.returns(
            T::Array[FinchAPI::Models::HRIS::DocumentRetreiveResponse::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
