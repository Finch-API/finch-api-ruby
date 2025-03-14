# frozen_string_literal: true

module FinchAPI
  # @abstract
  #
  # @example
  # ```ruby
  # if page.has_next?
  #   page = page.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # page.auto_paging_each do |access_token|
  #   puts(access_token)
  # end
  # ```
  #
  # @example
  # ```ruby
  # access_tokens = page.to_enum.take(2)
  #
  # access_tokens => Array
  # ```
  module BasePage
    # @return [Boolean]
    def next_page? = (raise NotImplementedError)

    # @raise [FinchAPI::APIError]
    # @return [FinchAPI::BasePage]
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    def auto_paging_each(&) = (raise NotImplementedError)

    # @return [Enumerable]
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @api private
    #
    # @param client [FinchAPI::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Object]
    def initialize(client:, req:, headers:, page_data:)
      @client = client
      @req = req
      super()
    end
  end
end
