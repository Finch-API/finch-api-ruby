# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Jobs::ManualTest < FinchAPI::Test::ResourceTest
  def test_retrieve
    response = @finch.jobs.manual.retrieve("job_id")

    assert_pattern do
      response => FinchAPI::Models::Jobs::ManualAsyncJob
    end

    assert_pattern do
      response => {
        body: ^(FinchAPI::ArrayOf[FinchAPI::Unknown]) | nil,
        job_id: String,
        status: FinchAPI::Models::Jobs::ManualAsyncJob::Status
      }
    end
  end
end
