# typed: strong

module FinchAPI
  module Resources
    class Payroll
      class PayGroups
        # Read information from a single pay group
        sig do
          params(
            pay_group_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash))
          )
            .returns(FinchAPI::Models::Payroll::PayGroupRetrieveResponse)
        end
        def retrieve(pay_group_id, request_options: {})
        end

        # Read company pay groups and frequencies
        sig do
          params(
            individual_id: String,
            pay_frequencies: T::Array[String],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash))
          )
            .returns(FinchAPI::Internal::SinglePage[FinchAPI::Models::Payroll::PayGroupListResponse])
        end
        def list(individual_id: nil, pay_frequencies: nil, request_options: {})
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
