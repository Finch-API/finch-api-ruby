# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # A 2020 version of the W-4 tax form containing information on an individual's
      #   filing status, dependents, and withholding details.
      module DocumentRetreiveResponse
        extend FinchAPI::Union

        discriminator :type

        # A 2020 version of the W-4 tax form containing information on an individual's filing status, dependents, and withholding details.
        variant :w4_2020, -> { FinchAPI::Models::HRIS::W42020 }

        # A 2005 version of the W-4 tax form containing information on an individual's filing status, dependents, and withholding details.
        variant :w4_2005, -> { FinchAPI::Models::HRIS::W42005 }

        # @!parse
        #   # @return [Array(FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005)]
        #   def self.variants; end
      end
    end
  end
end
