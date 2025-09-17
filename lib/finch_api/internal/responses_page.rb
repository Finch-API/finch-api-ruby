# frozen_string_literal: true

module FinchAPI
  module Internal
    # @generic Elem
    #
    # @example
    #   if responses_page.has_next?
    #     responses_page = responses_page.next_page
    #   end
    #
    # @example
    #   responses_page.auto_paging_each do |pay_statement_item|
    #     puts(pay_statement_item)
    #   end
    class ResponsesPage
      include FinchAPI::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :responses

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
          page.responses&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [FinchAPI::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Array<Object>]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {responses: Array => responses}
          @responses = responses.map { FinchAPI::Internal::Type::Converter.coerce(@model, _1) }
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
