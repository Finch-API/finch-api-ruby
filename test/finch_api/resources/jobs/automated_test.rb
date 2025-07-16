# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Jobs::AutomatedTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    response =
      @finch.jobs.automated.create(params: {individual_id: "individual_id"}, type: :w4_form_employee_sync)

    assert_pattern do
      response => FinchAPI::Models::Jobs::AutomatedCreateResponse
    end

    assert_pattern do
      response => {
        allowed_refreshes: Integer,
        remaining_refreshes: Integer,
        job_id: String | nil,
        job_url: String | nil,
        retry_at: String | nil
      }
    end
  end

  def test_retrieve
    response = @finch.jobs.automated.retrieve("job_id")

    assert_pattern do
      response => FinchAPI::Jobs::AutomatedAsyncJob
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        created_at: Time,
        job_id: String,
        job_url: String,
        params: FinchAPI::Jobs::AutomatedAsyncJob::Params | nil,
        scheduled_at: Time | nil,
        started_at: Time | nil,
        status: FinchAPI::Jobs::AutomatedAsyncJob::Status,
        type: FinchAPI::Jobs::AutomatedAsyncJob::Type
      }
    end
  end

  def test_list
    response = @finch.jobs.automated.list

    assert_pattern do
      response => FinchAPI::Models::Jobs::AutomatedListResponse
    end

    assert_pattern do
      response => {
        data: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Jobs::AutomatedAsyncJob]),
        meta: FinchAPI::Models::Jobs::AutomatedListResponse::Meta
      }
    end
  end
end
