# typed: strong

module FinchAPI
  module Internal
    module Type
      # @api private
      #
      # Array of items of a given type.
      class ArrayOf
        include FinchAPI::Internal::Type::Converter
        include FinchAPI::Internal::Util::SorbetRuntimeSupport

        abstract!

        Elem = type_member(:out)

        sig do
          params(
            type_info:
              T.any(
                FinchAPI::Internal::AnyHash,
                T.proc.returns(FinchAPI::Internal::Type::Converter::Input),
                FinchAPI::Internal::Type::Converter::Input
              ),
            spec: FinchAPI::Internal::AnyHash
          ).returns(T.attached_class)
        end
        def self.[](type_info, spec = {})
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ===(other)
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ==(other)
        end

        sig { returns(Integer) }
        def hash
        end

        # @api private
        sig do
          override
            .params(
              value: T.any(T::Array[T.anything], T.anything),
              state: FinchAPI::Internal::Type::Converter::CoerceState
            )
            .returns(T.any(T::Array[T.anything], T.anything))
        end
        def coerce(value, state:)
        end

        # @api private
        sig do
          override
            .params(
              value: T.any(T::Array[T.anything], T.anything),
              state: FinchAPI::Internal::Type::Converter::DumpState
            )
            .returns(T.any(T::Array[T.anything], T.anything))
        end
        def dump(value, state:)
        end

        # @api private
        sig { returns(T.anything) }
        def to_sorbet_type
        end

        # @api private
        sig { returns(Elem) }
        protected def item_type
        end

        # @api private
        sig { returns(T::Boolean) }
        protected def nilable?
        end

        # @api private
        sig do
          params(
            type_info:
              T.any(
                FinchAPI::Internal::AnyHash,
                T.proc.returns(FinchAPI::Internal::Type::Converter::Input),
                FinchAPI::Internal::Type::Converter::Input
              ),
            spec: FinchAPI::Internal::AnyHash
          ).void
        end
        def initialize(type_info, spec = {})
        end

        # @api private
        sig { params(depth: Integer).returns(String) }
        def inspect(depth: 0)
        end
      end
    end
  end
end
