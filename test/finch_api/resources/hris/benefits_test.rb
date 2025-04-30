# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::BenefitsTest < FinchAPI::Test::ResourceTest
  def test_create
    response = @finch.hris.benefits.create

    assert_pattern do
      response => FinchAPI::Models::HRIS::CreateCompanyBenefitsResponse
    end

    assert_pattern do
      response => {
        benefit_id: String,
        job_id: String
      }
    end
  end

  def test_retrieve
    response = @finch.hris.benefits.retrieve("benefit_id")

    assert_pattern do
      response => FinchAPI::Models::HRIS::CompanyBenefit
    end

    assert_pattern do
      response => {
        benefit_id: String,
        company_contribution: FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution | nil,
        description: String | nil,
        frequency: FinchAPI::Models::HRIS::BenefitFrequency | nil,
        type: FinchAPI::Models::HRIS::BenefitType | nil
      }
    end
  end

  def test_update
    response = @finch.hris.benefits.update("benefit_id")

    assert_pattern do
      response => FinchAPI::Models::HRIS::UpdateCompanyBenefitResponse
    end

    assert_pattern do
      response => {
        benefit_id: String,
        job_id: String
      }
    end
  end

  def test_list
    response = @finch.hris.benefits.list

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::CompanyBenefit
    end

    assert_pattern do
      row => {
        benefit_id: String,
        company_contribution: FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution | nil,
        description: String | nil,
        frequency: FinchAPI::Models::HRIS::BenefitFrequency | nil,
        type: FinchAPI::Models::HRIS::BenefitType | nil
      }
    end
  end

  def test_list_supported_benefits
    response = @finch.hris.benefits.list_supported_benefits

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse
    end

    assert_pattern do
      row => {
        annual_maximum: FinchAPI::Internal::Type::Boolean | nil,
        catch_up: FinchAPI::Internal::Type::Boolean | nil,
        company_contribution: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::CompanyContribution, nil?: true]) | nil,
        description: String | nil,
        employee_deduction: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::EmployeeDeduction, nil?: true]) | nil,
        frequencies: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitFrequency, nil?: true]) | nil,
        hsa_contribution_limit: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::HsaContributionLimit, nil?: true]) | nil
      }
    end
  end
end
