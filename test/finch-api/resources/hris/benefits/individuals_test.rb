# frozen_string_literal: true

require_relative "../../../test_helper"

class FinchAPI::Test::Resources::HRIS::Benefits::IndividualsTest < FinchAPI::Test::ResourceTest
  def test_enroll_many
    response = @finch.hris.benefits.individuals.enroll_many("benefit_id")

    assert_pattern do
      response => FinchAPI::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::Benefits::EnrolledIndividual
    end

    assert_pattern do
      row => {
        body: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Body | nil,
        code: FinchAPI::Models::HRIS::Benefits::EnrolledIndividual::Code | nil,
        individual_id: String | nil
      }
    end
  end

  def test_enrolled_ids
    response = @finch.hris.benefits.individuals.enrolled_ids("benefit_id")

    assert_pattern do
      response => FinchAPI::Models::HRIS::Benefits::IndividualEnrolledIDsResponse
    end

    assert_pattern do
      response => {
        benefit_id: String,
        individual_ids: ^(FinchAPI::ArrayOf[String])
      }
    end
  end

  def test_retrieve_many_benefits
    response = @finch.hris.benefits.individuals.retrieve_many_benefits("benefit_id")

    assert_pattern do
      response => FinchAPI::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::Benefits::IndividualBenefit
    end

    assert_pattern do
      row => {
        body: FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body | nil,
        code: Integer | nil,
        individual_id: String | nil
      }
    end
  end

  def test_unenroll_many
    response = @finch.hris.benefits.individuals.unenroll_many("benefit_id")

    assert_pattern do
      response => FinchAPI::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual
    end

    assert_pattern do
      row => {
        body: FinchAPI::Models::HRIS::Benefits::UnenrolledIndividual::Body | nil,
        code: Integer | nil,
        individual_id: String | nil
      }
    end
  end
end
