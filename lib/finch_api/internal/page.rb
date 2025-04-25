# frozen_string_literal: true

module FinchAPI
  module Internal
    # @generic Elem
    #
    # @example
    #   if page.has_next?
    #     page = page.next_page
    #   end
    #
    # @example
    #   page.auto_paging_each do |item|
    #     puts(item)
    #   end
    class Page
      include FinchAPI::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [FinchAPI::Models::Paging]
      attr_accessor :paging

      # @return [Boolean]
      def next_page?
        paging&.offset.to_i + data.to_a.size < paging&.count.to_i
      end

      # @raise [FinchAPI::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = FinchAPI::Internal::Util.deep_merge(
          @req,
          {query: {offset: paging&.offset.to_i + data.to_a.size}}
        )
        @client.request(req)
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
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [FinchAPI::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array | nil => data}
          @data = data&.map { FinchAPI::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {paging: Hash | nil => paging}
          @paging = FinchAPI::Internal::Type::Converter.coerce(FinchAPI::Models::Paging, paging)
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
