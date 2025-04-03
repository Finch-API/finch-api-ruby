# typed: strong

module FinchAPI
  module Internal
    module Type
      # @api private
      module RequestParameters
        # Options to specify HTTP behaviour for this request.
        sig { returns(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash)) }
        attr_accessor :request_options

        # @api private
        module Converter
          # @api private
          sig { params(params: T.anything).returns([T.anything, FinchAPI::Internal::Util::AnyHash]) }
          def dump_request(params)
          end
        end
      end
    end
  end
end
