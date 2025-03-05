# frozen_string_literal: true

require_relative "../../../test_helper"

class FinchAPI::Test::Resources::Sandbox::Jobs::ConfigurationTest < FinchAPI::Test::ResourceTest
  def test_retrieve
    response = @finch.sandbox.jobs.configuration.retrieve

    assert_pattern do
      response => ^(FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration])
    end
  end

  def test_update_required_params
    response = @finch.sandbox.jobs.configuration.update(completion_status: :complete, type: :data_sync_all)

    assert_pattern do
      response => FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration
    end

    assert_pattern do
      response => {
        completion_status: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus,
        type: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type
      }
    end
  end
end
