# typed: strong

module FinchAPI
  module Models
    module HRIS
      # A 2020 version of the W-4 tax form containing information on an individual's
      # filing status, dependents, and withholding details.
      module DocumentRetreiveResponse
        extend FinchAPI::Internal::Type::Union

        sig { override.returns([FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005]) }
        def self.variants; end
      end
    end
  end
end
