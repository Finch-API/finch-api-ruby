# frozen_string_literal: true

module FinchAPI
  module Internal
    module Type
      # @api private
      #
      # A value from among a specified list of options. OpenAPI enum values map to Ruby
      # values in the SDK as follows:
      #
      # 1. boolean => true | false
      # 2. integer => Integer
      # 3. float => Float
      # 4. string => Symbol
      #
      # We can therefore convert string values to Symbols, but can't convert other
      # values safely.
      #
      # @example
      #   # `connection_status_type` is a `FinchAPI::ConnectionStatusType`
      #   case connection_status_type
      #   when FinchAPI::ConnectionStatusType::PENDING
      #     # ...
      #   when FinchAPI::ConnectionStatusType::PROCESSING
      #     # ...
      #   when FinchAPI::ConnectionStatusType::CONNECTED
      #     # ...
      #   else
      #     puts(connection_status_type)
      #   end
      #
      # @example
      #   case connection_status_type
      #   in :pending
      #     # ...
      #   in :processing
      #     # ...
      #   in :connected
      #     # ...
      #   else
      #     puts(connection_status_type)
      #   end
      module Enum
        include FinchAPI::Internal::Type::Converter
        include FinchAPI::Internal::Util::SorbetRuntimeSupport

        # All of the valid Symbol values for this enum.
        #
        # @return [Array<NilClass, Boolean, Integer, Float, Symbol>]
        def values = constants.map { const_get(_1) }

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other) = values.include?(other)

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          # rubocop:disable Style/CaseEquality
          FinchAPI::Internal::Type::Enum === other && other.values.to_set == values.to_set
          # rubocop:enable Style/CaseEquality
        end

        # @api public
        #
        # @return [Integer]
        def hash = values.to_set.hash

        # @api private
        #
        # Unlike with primitives, `Enum` additionally validates that the value is a member
        # of the enum.
        #
        # @param value [String, Symbol, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :translate_names
        #
        #   @option state [Boolean] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Class<StandardError>] :error
        #
        #   @option state [Integer] :branched
        #
        # @return [Symbol, Object]
        def coerce(value, state:)
          exactness = state.fetch(:exactness)
          val = value.is_a?(String) ? value.to_sym : value

          if values.include?(val)
            exactness[:yes] += 1
            val
          elsif values.first&.class == val.class
            exactness[:maybe] += 1
            value
          else
            exactness[:no] += 1
            state[:error] = TypeError.new("#{value.class} can't be coerced into #{self}")
            value
          end
        end

        # @!method dump(value, state:)
        #   @api private
        #
        #   @param value [Symbol, Object]
        #
        #   @param state [Hash{Symbol=>Object}] .
        #
        #     @option state [Boolean] :can_retry
        #
        #   @return [Symbol, Object]

        # @api private
        #
        # @return [Object]
        def to_sorbet_type
          types = values.map { FinchAPI::Internal::Util::SorbetRuntimeSupport.to_sorbet_type(_1) }.uniq
          case types
          in []
            T.noreturn
          in [type]
            type
          else
            T.any(*types)
          end
        end

        # @api private
        #
        # @param depth [Integer]
        #
        # @return [String]
        def inspect(depth: 0)
          if depth.positive?
            return is_a?(Module) ? super() : self.class.name
          end

          members = values.map { FinchAPI::Internal::Type::Converter.inspect(_1, depth: depth.succ) }
          prefix = is_a?(Module) ? name : self.class.name

          "#{prefix}[#{members.join(' | ')}]"
        end
      end
    end
  end
end
