# frozen_string_literal: true

module FinchAPI
  # @private
  #
  # @abstract
  #
  module RequestParameters
    # @!parse
    #   # Options to specify HTTP behaviour for this request.
    #   # @return [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    #   attr_accessor :request_options

    # @param mod [Module]
    #
    def self.included(mod)
      return unless mod <= FinchAPI::BaseModel

      mod.extend(FinchAPI::RequestParameters::Converter)
      mod.optional(:request_options, FinchAPI::RequestOptions)
    end

    # @private
    #
    module Converter
      # @private
      #
      # @param params [Object]
      #
      # @return [Array(Object, Hash{Symbol=>Object})]
      #
      def dump_request(params)
        case (dumped = dump(params))
        in Hash
          [dumped.except(:request_options), dumped[:request_options]]
        else
          [dumped, nil]
        end
      end
    end
  end

  # Specify HTTP behaviour to use for a specific request. These options supplement
  #   or override those provided at the client level.
  #
  #   When making a request, you can pass an actual {RequestOptions} instance, or
  #   simply pass a Hash with symbol keys matching the attributes on this class.
  class RequestOptions < FinchAPI::BaseModel
    # @private
    #
    # @param opts [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    #
    # @raise [ArgumentError]
    #
    def self.validate!(opts)
      case opts
      in FinchAPI::RequestOptions | Hash
        opts.to_h.each_key do |k|
          unless fields.include?(k)
            raise ArgumentError.new("Request `opts` keys must be one of #{fields.keys}, got #{k.inspect}")
          end
        end
      else
        raise ArgumentError.new("Request `opts` must be a Hash or RequestOptions, got #{opts.inspect}")
      end
    end

    # @!attribute idempotency_key
    #   Idempotency key to send with request and all associated retries. Will only be
    #     sent for write requests.
    #
    #   @return [String, nil]
    optional :idempotency_key, String

    # @!attribute extra_query
    #   Extra query params to send with the request. These are `.merge`’d into any
    #     `query` given at the client level.
    #
    #   @return [Hash{String=>Array<String>, String, nil}, nil]
    optional :extra_query, FinchAPI::HashOf[FinchAPI::ArrayOf[String]]

    # @!attribute extra_headers
    #   Extra headers to send with the request. These are `.merged`’d into any
    #     `extra_headers` given at the client level.
    #
    #   @return [Hash{String=>String, nil}, nil]
    optional :extra_headers, FinchAPI::HashOf[String, nil?: true]

    # @!attribute extra_body
    #   Extra data to send with the request. These are deep merged into any data
    #     generated as part of the normal request.
    #
    #   @return [Hash{Symbol=>Object}, nil]
    optional :extra_body, FinchAPI::HashOf[FinchAPI::Unknown]

    # @!attribute max_retries
    #   Maximum number of retries to attempt after a failed initial request.
    #
    #   @return [Integer, nil]
    optional :max_retries, Integer

    # @!attribute timeout
    #   Request timeout in seconds.
    #
    #   @return [Float, nil]
    optional :timeout, Float

    # @!parse
    #   # Returns a new instance of RequestOptions.
    #   #
    #   # @param values [Hash{Symbol=>Object}]
    #   #
    #   def initialize(values = {}) = super
  end
end
