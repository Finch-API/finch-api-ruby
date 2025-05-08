# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Jobs::ManualTest < FinchAPI::Test::ResourceTest
  def test_retrieve
    response = @finch.jobs.manual.retrieve("job_id")

    assert_pattern do
      response => FinchAPI::Jobs::ManualAsyncJob
    end

    assert_pattern do
      response => {
        body: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Internal::Type::Unknown]) | nil,
        job_id: String,
        status: FinchAPI::Jobs::ManualAsyncJob::Status
      }
    end
  end
end
