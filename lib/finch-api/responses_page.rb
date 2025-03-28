# frozen_string_literal: true

module FinchAPI
  # @example
  #   if responses_page.has_next?
  #     responses_page = responses_page.next_page
  #   end
  #
  # @example
  #   responses_page.auto_paging_each do |individual|
  #     puts(individual)
  #   end
  #
  # @example
  #   individuals =
  #     responses_page
  #     .to_enum
  #     .lazy
  #     .select { _1.object_id.even? }
  #     .map(&:itself)
  #     .take(2)
  #     .to_a
  #
  #   individuals => Array
  class ResponsesPage
    include FinchAPI::BasePage

    # @return [Array<Object>, nil]
    attr_accessor :responses

    # @api private
    #
    # @param client [FinchAPI::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Array<Object>]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in {responses: Array | nil => responses}
        @responses = responses&.map { FinchAPI::Converter.coerce(model, _1) }
      else
      end
    end

    # @return [Boolean]
    def next_page?
      false
    end

    # @raise [FinchAPI::HTTP::Error]
    # @return [FinchAPI::ResponsesPage]
    def next_page
      RuntimeError.new("No more pages available.")
    end

    # @param blk [Proc]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.responses&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} responses=#{responses.inspect}>"
    end
  end
end
