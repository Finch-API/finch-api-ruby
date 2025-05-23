# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Payment
        # Add a new sandbox payment
        sig do
          params(
            end_date: String,
            pay_statements:
              T::Array[
                FinchAPI::Sandbox::PaymentCreateParams::PayStatement::OrHash
              ],
            start_date: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Models::Sandbox::PaymentCreateResponse)
        end
        def create(
          end_date: nil,
          pay_statements: nil,
          start_date: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
