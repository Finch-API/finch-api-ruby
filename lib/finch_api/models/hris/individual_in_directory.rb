# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Directory#list
      class IndividualInDirectory < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute department
        #   The department object.
        #
        #   @return [FinchAPI::HRIS::IndividualInDirectory::Department, nil]
        required :department, -> { FinchAPI::HRIS::IndividualInDirectory::Department }, nil?: true

        # @!attribute first_name
        #   The legal first name of the individual.
        #
        #   @return [String, nil]
        required :first_name, String, nil?: true

        # @!attribute is_active
        #   `true` if the individual is an active employee or contractor at the company.
        #
        #   @return [Boolean, nil]
        required :is_active, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute last_name
        #   The legal last name of the individual.
        #
        #   @return [String, nil]
        required :last_name, String, nil?: true

        # @!attribute manager
        #   The manager object.
        #
        #   @return [FinchAPI::HRIS::IndividualInDirectory::Manager, nil]
        required :manager, -> { FinchAPI::HRIS::IndividualInDirectory::Manager }, nil?: true

        # @!attribute middle_name
        #   The legal middle name of the individual.
        #
        #   @return [String, nil]
        required :middle_name, String, nil?: true

        # @!method initialize(id:, department:, first_name:, is_active:, last_name:, manager:, middle_name:)
        #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @param department [FinchAPI::HRIS::IndividualInDirectory::Department, nil] The department object.
        #
        #   @param first_name [String, nil] The legal first name of the individual.
        #
        #   @param is_active [Boolean, nil] `true` if the individual is an active employee or contractor at the company.
        #
        #   @param last_name [String, nil] The legal last name of the individual.
        #
        #   @param manager [FinchAPI::HRIS::IndividualInDirectory::Manager, nil] The manager object.
        #
        #   @param middle_name [String, nil] The legal middle name of the individual.

        # @see FinchAPI::HRIS::IndividualInDirectory#department
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

        # @see FinchAPI::HRIS::IndividualInDirectory#manager
        class Manager < FinchAPI::Internal::Type::BaseModel
          # @!attribute id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The manager object.
          #
          #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        end
      end
    end
  end
end
