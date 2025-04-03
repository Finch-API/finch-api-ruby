# typed: strong

module FinchAPI
  module Models
    module Sandbox
      DirectoryCreateResponse =
        T.let(
          FinchAPI::Internal::Type::ArrayOf[FinchAPI::Internal::Type::Unknown],
          FinchAPI::Internal::Type::Converter
        )
    end
  end
end
