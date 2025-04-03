# typed: strong

module FinchAPI
  module Models
    module HRIS
      class EmploymentDataResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::EmploymentData)) }
        attr_reader :body

        sig { params(body: T.any(FinchAPI::Models::HRIS::EmploymentData, FinchAPI::Internal::Util::AnyHash)).void }
        attr_writer :body

        sig { returns(T.nilable(Integer)) }
        attr_reader :code

        sig { params(code: Integer).void }
        attr_writer :code

        # A stable Finch `id` (UUID v4) for an individual in the company.
        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig do
          params(
            body: T.any(FinchAPI::Models::HRIS::EmploymentData, FinchAPI::Internal::Util::AnyHash),
            code: Integer,
            individual_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, code: nil, individual_id: nil)
        end

        sig { override.returns({body: FinchAPI::Models::HRIS::EmploymentData, code: Integer, individual_id: String}) }
        def to_hash
        end
      end
    end
  end
end
