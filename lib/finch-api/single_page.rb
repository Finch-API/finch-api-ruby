# frozen_string_literal: true

module FinchAPI
  # @example
  # ```ruby
  # if single_page.has_next?
  #   page = single_page.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # single_page.auto_paging_each do |item|
  # #   item ...
  # end
  # ```
  #
  # @example
  # ```ruby
  # items = single_page.to_enum.take(2)
  #
  # items => Array
  # ```
  class SinglePage < ::Array
    include FinchAPI::BasePage

    # rubocop:disable Lint/UnusedMethodArgument
    # @private
    #
    # @param client [FinchAPI::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param unwrapped [Array<Object>]
    #
    def initialize(client:, req:, headers:, unwrapped:)
      @client = client
      @req = req
      model = req.fetch(:model)

      case unwrapped
      in Array
        super(unwrapped&.map { model.coerce(_1) })
      else
        super([])
      end
    end
    # rubocop:enable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page?
      false
    end

    # @raise [FinchAPI::HTTP::Error]
    # @return [FinchAPI::SinglePage]
    #
    def next_page
      raise NotImplementedError
    end

    # @param blk [Proc]
    #
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to #auto_paging_each")
      end
      page = self
      loop do
        page.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)}>"
    end
  end
end
