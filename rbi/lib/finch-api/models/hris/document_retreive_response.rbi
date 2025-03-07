# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentRetreiveResponse < FinchAPI::Union
        abstract!

        class << self
          sig { override.returns([[Symbol, FinchAPI::Models::HRIS::W42020], [Symbol, FinchAPI::Models::HRIS::W42005]]) }
          private def variants
          end
        end
      end
    end
  end
end
