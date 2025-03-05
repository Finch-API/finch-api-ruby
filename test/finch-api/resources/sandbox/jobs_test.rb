# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::JobsTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    response = @finch.sandbox.jobs.create(type: :data_sync_all)

    assert_pattern do
      response => FinchAPI::Models::Sandbox::JobCreateResponse
    end

    assert_pattern do
      response => {
        allowed_refreshes: Integer,
        job_id: String,
        job_url: String,
        remaining_refreshes: Integer
      }
    end
  end
end
