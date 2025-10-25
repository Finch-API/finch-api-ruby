# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::BenefitsTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    response = @finch.hris.benefits.create(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::HRIS::CreateCompanyBenefitsResponse
    end

    assert_pattern do
      response => {
        benefit_id: String,
        job_id: String
      }
    end
  end

  def test_retrieve_required_params
    response =
      @finch.hris.benefits.retrieve("benefit_id", entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::HRIS::CompanyBenefit
    end

    assert_pattern do
      response => {
        benefit_id: String,
        description: String | nil,
        frequency: FinchAPI::HRIS::BenefitFrequency | nil,
        type: FinchAPI::HRIS::BenefitType | nil,
        company_contribution: FinchAPI::HRIS::CompanyBenefit::CompanyContribution | nil
      }
    end
  end

  def test_update_required_params
    response =
      @finch.hris.benefits.update("benefit_id", entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::HRIS::UpdateCompanyBenefitResponse
    end

    assert_pattern do
      response => {
        benefit_id: String,
        job_id: String
      }
    end
  end

  def test_list_required_params
    response = @finch.hris.benefits.list(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::CompanyBenefit
    end

    assert_pattern do
      row => {
        benefit_id: String,
        description: String | nil,
        frequency: FinchAPI::HRIS::BenefitFrequency | nil,
        type: FinchAPI::HRIS::BenefitType | nil,
        company_contribution: FinchAPI::HRIS::CompanyBenefit::CompanyContribution | nil
      }
    end
  end

  def test_list_supported_benefits_required_params
    response =
      @finch.hris.benefits.list_supported_benefits(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::SupportedBenefit
    end

    assert_pattern do
      row => {
        annual_maximum: FinchAPI::Internal::Type::Boolean | nil,
        company_contribution: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::SupportedBenefit::CompanyContribution,
                                                                  nil?: true]) | nil,
        description: String | nil,
        employee_deduction: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction,
                                                                nil?: true]) | nil,
        frequencies: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::BenefitFrequency, nil?: true]),
        catch_up: FinchAPI::Internal::Type::Boolean | nil,
        hsa_contribution_limit: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit,
                                                                    nil?: true]) | nil
      }
    end
  end
end
