# typed: strong

module FinchAPI
  module Models
    module HRIS
      # A 2020 version of the W-4 tax form containing information on an individual's
      #   filing status, dependents, and withholding details.
      class DocumentRetreiveResponse < FinchAPI::Union
        abstract!

        class << self
          # @api private
          sig { override.returns([[Symbol, FinchAPI::Models::HRIS::W42020], [Symbol, FinchAPI::Models::HRIS::W42005]]) }
          private def variants
          end
        end
      end
    end
  end
end
