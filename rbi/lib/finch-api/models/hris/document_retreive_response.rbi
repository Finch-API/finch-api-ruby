# typed: strong

module FinchAPI
  module Models
    module HRIS
      # A 2020 version of the W-4 tax form containing information on an individual's
      #   filing status, dependents, and withholding details.
      class DocumentRetreiveResponse < FinchAPI::Union
        abstract!

        class << self
          sig { override.returns([FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005]) }
          def variants
          end
        end
      end
    end
  end
end
