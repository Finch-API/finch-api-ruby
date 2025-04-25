# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Directory#list
      class IndividualInDirectory < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute department
        #   The department object.
        #
        #   @return [FinchAPI::Models::HRIS::IndividualInDirectory::Department, nil]
        optional :department, -> { FinchAPI::Models::HRIS::IndividualInDirectory::Department }, nil?: true

        # @!attribute first_name
        #   The legal first name of the individual.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute is_active
        #   `true` if the individual is an active employee or contractor at the company.
        #
        #   @return [Boolean, nil]
        optional :is_active, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute last_name
        #   The legal last name of the individual.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute manager
        #   The manager object.
        #
        #   @return [FinchAPI::Models::HRIS::IndividualInDirectory::Manager, nil]
        optional :manager, -> { FinchAPI::Models::HRIS::IndividualInDirectory::Manager }, nil?: true

        # @!attribute middle_name
        #   The legal middle name of the individual.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!method initialize(id: nil, department: nil, first_name: nil, is_active: nil, last_name: nil, manager: nil, middle_name: nil)
        #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @param department [FinchAPI::Models::HRIS::IndividualInDirectory::Department, nil] The department object.
        #
        #   @param first_name [String, nil] The legal first name of the individual.
        #
        #   @param is_active [Boolean, nil] `true` if the individual is an active employee or contractor at the company.
        #
        #   @param last_name [String, nil] The legal last name of the individual.
        #
        #   @param manager [FinchAPI::Models::HRIS::IndividualInDirectory::Manager, nil] The manager object.
        #
        #   @param middle_name [String, nil] The legal middle name of the individual.

        # @see FinchAPI::Models::HRIS::IndividualInDirectory#department
        class Department < FinchAPI::Internal::Type::BaseModel
          # @!attribute name
          #   The name of the department.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!method initialize(name: nil)
          #   The department object.
          #
          #   @param name [String, nil] The name of the department.
        end

        # @see FinchAPI::Models::HRIS::IndividualInDirectory#manager
        class Manager < FinchAPI::Internal::Type::BaseModel
          # @!attribute id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   The manager object.
          #
          #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        end
      end
    end
  end
end
