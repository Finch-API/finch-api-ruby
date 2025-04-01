# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Directory#list
      class IndividualInDirectory < FinchAPI::BaseModel
        # @!attribute [r] id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

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
        optional :is_active, FinchAPI::BooleanModel, nil?: true

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

        # @!parse
        #   # @param id [String]
        #   # @param department [FinchAPI::Models::HRIS::IndividualInDirectory::Department, nil]
        #   # @param first_name [String, nil]
        #   # @param is_active [Boolean, nil]
        #   # @param last_name [String, nil]
        #   # @param manager [FinchAPI::Models::HRIS::IndividualInDirectory::Manager, nil]
        #   # @param middle_name [String, nil]
        #   #
        #   def initialize(
        #     id: nil,
        #     department: nil,
        #     first_name: nil,
        #     is_active: nil,
        #     last_name: nil,
        #     manager: nil,
        #     middle_name: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # @see FinchAPI::Models::HRIS::IndividualInDirectory#department
        class Department < FinchAPI::BaseModel
          # @!attribute name
          #   The name of the department.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!parse
          #   # The department object.
          #   #
          #   # @param name [String, nil]
          #   #
          #   def initialize(name: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end

        # @see FinchAPI::Models::HRIS::IndividualInDirectory#manager
        class Manager < FinchAPI::BaseModel
          # @!attribute [r] id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!parse
          #   # The manager object.
          #   #
          #   # @param id [String]
          #   #
          #   def initialize(id: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
