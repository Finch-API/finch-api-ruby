# typed: strong

module FinchAPI
  module Models
    module HRIS
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        sig do
          returns(
            T.any(FinchAPI::Models::HRIS::Individual::UnionMember0, FinchAPI::Models::HRIS::Individual::UnionMember1)
          )
        end
        attr_accessor :body

        sig { returns(Integer) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :individual_id

        sig do
          params(
            body: T.any(
              FinchAPI::Models::HRIS::Individual::UnionMember0,
              FinchAPI::Internal::AnyHash,
              FinchAPI::Models::HRIS::Individual::UnionMember1
            ),
            code: Integer,
            individual_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(body:, code:, individual_id:); end

        sig do
          override
            .returns(
              {
                body: T.any(FinchAPI::Models::HRIS::Individual::UnionMember0, FinchAPI::Models::HRIS::Individual::UnionMember1),
                code: Integer,
                individual_id: String
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
