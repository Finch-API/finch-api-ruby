# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @abstract
      #
      # A 2020 version of the W-4 tax form containing information on an individual's
      #   filing status, dependents, and withholding details.
      #
      # @example
      # ```ruby
      # case document_retreive_response
      # in {type: "w4_2020", data: FinchAPI::Models::HRIS::W42020::Data, year: Float}
      #   # FinchAPI::Models::HRIS::W42020 ...
      # in {type: "w4_2005", data: FinchAPI::Models::HRIS::W42005::Data, year: Float}
      #   # FinchAPI::Models::HRIS::W42005 ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case document_retreive_response
      # in FinchAPI::Models::HRIS::W42020
      #   # ...
      # in FinchAPI::Models::HRIS::W42005
      #   # ...
      # end
      # ```
      class DocumentRetreiveResponse < FinchAPI::Union
        discriminator :type

        # A 2020 version of the W-4 tax form containing information on an individual's filing status, dependents, and withholding details.
        variant :w4_2020, -> { FinchAPI::Models::HRIS::W42020 }

        # A 2005 version of the W-4 tax form containing information on an individual's filing status, dependents, and withholding details.
        variant :w4_2005, -> { FinchAPI::Models::HRIS::W42005 }
      end
    end
  end
end
