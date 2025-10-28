# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Benefits
        sig { returns(FinchAPI::Resources::HRIS::Benefits::Individuals) }
        attr_reader :individuals

        # Creates a new company-wide deduction or contribution. Please use the
        # `/providers` endpoint to view available types for each provider.
        sig do
          params(
            entity_ids: T::Array[String],
            company_contribution:
              T.nilable(
                FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::OrHash
              ),
            description: String,
            frequency: T.nilable(FinchAPI::HRIS::BenefitFrequency::OrSymbol),
            type: T.nilable(FinchAPI::HRIS::BenefitType::OrSymbol),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::HRIS::CreateCompanyBenefitsResponse)
        end
        def create(
          # Query param: The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          # Body param: The company match for this benefit.
          company_contribution: nil,
          # Body param: Name of the benefit as it appears in the provider and pay
          # statements. Recommend limiting this to <30 characters due to limitations in
          # specific providers (e.g. Justworks).
          description: nil,
          # Body param: The frequency of the benefit deduction/contribution.
          frequency: nil,
          # Body param: Type of benefit.
          type: nil,
          request_options: {}
        )
        end

        # Lists deductions and contributions information for a given item
        sig do
          params(
            benefit_id: String,
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::HRIS::CompanyBenefit)
        end
        def retrieve(
          benefit_id,
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          request_options: {}
        )
        end

        # Updates an existing company-wide deduction or contribution
        sig do
          params(
            benefit_id: String,
            entity_ids: T::Array[String],
            description: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::HRIS::UpdateCompanyBenefitResponse)
        end
        def update(
          # Path param:
          benefit_id,
          # Query param: The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          # Body param: Updated name or description.
          description: nil,
          request_options: {}
        )
        end

        # List all company-wide deductions and contributions.
        sig do
          params(
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::SinglePage[FinchAPI::HRIS::CompanyBenefit]
          )
        end
        def list(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          request_options: {}
        )
        end

        # Get deductions metadata
        sig do
          params(
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(
            FinchAPI::Internal::SinglePage[FinchAPI::HRIS::SupportedBenefit]
          )
        end
        def list_supported_benefits(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
