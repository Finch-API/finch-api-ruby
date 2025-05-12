# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # A 2020 version of the W-4 tax form containing information on an individual's
      # filing status, dependents, and withholding details.
      #
      # @see FinchAPI::Resources::HRIS::Documents#retreive
      module DocumentRetreiveResponse
        extend FinchAPI::Internal::Type::Union

        discriminator :type

        # A 2020 version of the W-4 tax form containing information on an individual's filing status, dependents, and withholding details.
        variant :w4_2020, -> { FinchAPI::HRIS::W42020 }

        # A 2005 version of the W-4 tax form containing information on an individual's filing status, dependents, and withholding details.
        variant :w4_2005, -> { FinchAPI::HRIS::W42005 }

        # @!method self.variants
        #   @return [Array(FinchAPI::HRIS::W42020, FinchAPI::HRIS::W42005)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(FinchAPI::HRIS::W42020, FinchAPI::HRIS::W42005) }
        end
      end
    end
  end
end
