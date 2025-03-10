# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class JobCreateResponse < FinchAPI::BaseModel
        sig { returns(Integer) }
        def allowed_refreshes
        end

        sig { params(_: Integer).returns(Integer) }
        def allowed_refreshes=(_)
        end

        sig { returns(String) }
        def job_id
        end

        sig { params(_: String).returns(String) }
        def job_id=(_)
        end

        sig { returns(String) }
        def job_url
        end

        sig { params(_: String).returns(String) }
        def job_url=(_)
        end

        sig { returns(Integer) }
        def remaining_refreshes
        end

        sig { params(_: Integer).returns(Integer) }
        def remaining_refreshes=(_)
        end

        sig do
          params(allowed_refreshes: Integer, job_id: String, job_url: String, remaining_refreshes: Integer)
            .returns(T.attached_class)
        end
        def self.new(allowed_refreshes:, job_id:, job_url:, remaining_refreshes:)
        end

        sig do
          override
            .returns({
                       allowed_refreshes: Integer,
                       job_id: String,
                       job_url: String,
                       remaining_refreshes: Integer
                     })
        end
        def to_hash
        end
      end
    end
  end
end
