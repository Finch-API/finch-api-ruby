# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PaymentListParams < FinchAPI::BaseModel
        extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        sig { returns(Date) }
        attr_accessor :end_date

        # The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        sig { returns(Date) }
        attr_accessor :start_date

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
