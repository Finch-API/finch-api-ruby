# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentRetreiveResponse < FinchAPI::Union
        abstract!

        sig { override.returns([[Symbol, FinchAPI::Models::HRIS::W42020], [Symbol, FinchAPI::Models::HRIS::W42005]]) }
        private_class_method def self.variants
        end
      end
    end
  end
end
