# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        sig { returns(FinchAPI::Models::HRIS::Individual) }
        attr_reader :body

        sig { params(body: T.any(FinchAPI::Models::HRIS::Individual, FinchAPI::Internal::AnyHash)).void }
        attr_writer :body

        sig { returns(Integer) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :individual_id

        sig do
          params(
            body: T.any(FinchAPI::Models::HRIS::Individual, FinchAPI::Internal::AnyHash),
            code: Integer,
            individual_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(body:, code:, individual_id:); end

        sig { override.returns({body: FinchAPI::Models::HRIS::Individual, code: Integer, individual_id: String}) }
        def to_hash; end
      end
    end
  end
end
