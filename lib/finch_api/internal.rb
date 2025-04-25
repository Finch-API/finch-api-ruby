# frozen_string_literal: true

module FinchAPI
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{FinchAPI::Internal}::OMIT>" }
      end
        .freeze
  end
end
