# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        sig { returns(FinchAPI::Resources::HRIS::Company::PayStatementItem) }
        attr_reader :pay_statement_item

        # Read basic company data
        sig do
          params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)))
            .returns(FinchAPI::Models::HRIS::HRISCompany)
        end
        def retrieve(request_options: {}); end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
