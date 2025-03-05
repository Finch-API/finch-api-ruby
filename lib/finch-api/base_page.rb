# frozen_string_literal: true

module FinchAPI
  # @private
  #
  # @abstract
  #
  module BasePage
    # @return [Boolean]
    #
    def next_page? = (raise NotImplementedError)

    # @raise [FinchAPI::APIError]
    # @return [FinchAPI::BasePage]
    #
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    #
    def auto_paging_each(&) = (raise NotImplementedError)

    # @return [Enumerable]
    #
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @!parse
    #   # @private
    #   #
    #   # @param client [FinchAPI::BaseClient]
    #   # @param req [Hash{Symbol=>Object}]
    #   # @param headers [Hash{String=>String}, Net::HTTPHeader]
    #   # @param unwrapped [Object]
    #   #
    #   def initialize(client:, req:, headers:, unwrapped:); end
  end
end
