# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PaymentListParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        sig { returns(Date) }
        def end_date
        end

        sig { params(_: Date).returns(Date) }
        def end_date=(_)
        end

        # The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        sig { returns(Date) }
        def start_date
        end

        sig { params(_: Date).returns(Date) }
        def start_date=(_)
        end

        sig do
          params(
            end_date: Date,
            start_date: Date,
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(end_date:, start_date:, request_options: {})
        end

        sig do
          override.returns({end_date: Date, start_date: Date, request_options: FinchAPI::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
