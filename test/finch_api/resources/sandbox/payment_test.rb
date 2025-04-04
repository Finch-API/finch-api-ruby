# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::PaymentTest < FinchAPI::Test::ResourceTest
  def test_create
    response = @finch.sandbox.payment.create

    assert_pattern do
      response => FinchAPI::Models::Sandbox::PaymentCreateResponse
    end

    assert_pattern do
      response => {
        pay_date: String,
        payment_id: String
      }
    end
  end
end
