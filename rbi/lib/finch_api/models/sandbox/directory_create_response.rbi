# typed: strong

module FinchAPI
  module Models
    module Sandbox
      DirectoryCreateResponse =
        T.let(FinchAPI::ArrayOf[FinchAPI::Unknown], FinchAPI::Internal::Type::Converter)
    end
  end
end
