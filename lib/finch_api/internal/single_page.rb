# frozen_string_literal: true

module FinchAPI
  module Internal
    # @generic Elem
    #
    # @example
    #   if single_page.has_next?
    #     single_page = single_page.next_page
    #   end
    #
    # @example
    #   single_page.auto_paging_each do |payment|
    #     puts(payment)
    #   end
    class SinglePage < ::Array
      include FinchAPI::Internal::Type::BasePage

      # @api private
      #
      # @param client [FinchAPI::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Array<Object>]
      def initialize(client:, req:, headers:, page_data:)
        super
        model = req.fetch(:model)

        case page_data
        in Array
          replace(page_data.map { FinchAPI::Internal::Type::Converter.coerce(model, _1) })
        else
        end
      end

      # @return [Boolean]
      def next_page?
        false
      end

      # @raise [FinchAPI::HTTP::Error]
      # @return [FinchAPI::Internal::SinglePage]
      def next_page
        RuntimeError.new("No more pages available.")
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end
        page = self
        loop do
          page.each { blk.call(_1) }
          break unless page.next_page?
          page = page.next_page
        end
      end

      # @return [String]
      def inspect
        "#<#{self.class}:0x#{object_id.to_s(16)}>"
      end
    end
  end
end
