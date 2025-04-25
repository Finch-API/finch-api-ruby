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

      # @return [Boolean]
      def next_page?
        false
      end

      # @raise [FinchAPI::HTTP::Error]
      # @return [self]
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
          page.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [FinchAPI::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Array<Object>]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in Array
          replace(page_data.map { FinchAPI::Internal::Type::Converter.coerce(@model, _1) })
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = FinchAPI::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end
    end
  end
end
