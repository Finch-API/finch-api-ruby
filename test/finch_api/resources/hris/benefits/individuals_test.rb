# frozen_string_literal: true

require_relative "../../../test_helper"

class FinchAPI::Test::Resources::HRIS::Benefits::IndividualsTest < FinchAPI::Test::ResourceTest
  def test_enroll_many
    response = @finch.hris.benefits.individuals.enroll_many("benefit_id")

    assert_pattern do
      response => FinchAPI::Models::HRIS::Benefits::EnrolledIndividualBenifit
    end

    assert_pattern do
      response => {
        job_id: String
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
        individual_ids: ^(FinchAPI::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_retrieve_many_benefits
    response = @finch.hris.benefits.individuals.retrieve_many_benefits("benefit_id")

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
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
      response => FinchAPI::Models::HRIS::Benefits::IndividualUnenrollManyResponse
    end

    assert_pattern do
      response => {
        job_id: String
      }
    end
  end
end
