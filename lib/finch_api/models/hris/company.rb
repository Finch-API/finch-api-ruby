# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Company#retrieve
      class HRISCompany < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute accounts
        #   An array of bank account objects associated with the payroll/HRIS system.
        #
        #   @return [Array<FinchAPI::Models::HRIS::HRISCompany::Account>, nil]
        required :accounts,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::HRISCompany::Account] },
                 nil?: true

        # @!attribute departments
        #   The array of company departments.
        #
        #   @return [Array<FinchAPI::Models::HRIS::HRISCompany::Department, nil>, nil]
        required :departments,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::HRISCompany::Department, nil?: true]
                 },
                 nil?: true

        # @!attribute ein
        #   The employer identification number.
        #
        #   @return [String, nil]
        required :ein, String, nil?: true

        # @!attribute entity
        #   The entity type object.
        #
        #   @return [FinchAPI::Models::HRIS::HRISCompany::Entity, nil]
        required :entity, -> { FinchAPI::HRIS::HRISCompany::Entity }, nil?: true

        # @!attribute legal_name
        #   The legal name of the company.
        #
        #   @return [String, nil]
        required :legal_name, String, nil?: true

        # @!attribute locations
        #
        #   @return [Array<FinchAPI::Models::Location, nil>, nil]
        required :locations,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[FinchAPI::Location, nil?: true]
                 },
                 nil?: true

        # @!attribute primary_email
        #   The email of the main administrator on the account.
        #
        #   @return [String, nil]
        required :primary_email, String, nil?: true

        # @!attribute primary_phone_number
        #   The phone number of the main administrator on the account. Format: E.164, with
        #   extension where applicable, e.g. `+NNNNNNNNNNN xExtension`
        #
        #   @return [String, nil]
        required :primary_phone_number, String, nil?: true

        # @!method initialize(id:, accounts:, departments:, ein:, entity:, legal_name:, locations:, primary_email:, primary_phone_number:)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::HRISCompany} for more details.
        #
        #   @param id [String] A stable Finch `id` (UUID v4) for the company.
        #
        #   @param accounts [Array<FinchAPI::Models::HRIS::HRISCompany::Account>, nil] An array of bank account objects associated with the payroll/HRIS system.
        #
        #   @param departments [Array<FinchAPI::Models::HRIS::HRISCompany::Department, nil>, nil] The array of company departments.
        #
        #   @param ein [String, nil] The employer identification number.
        #
        #   @param entity [FinchAPI::Models::HRIS::HRISCompany::Entity, nil] The entity type object.
        #
        #   @param legal_name [String, nil] The legal name of the company.
        #
        #   @param locations [Array<FinchAPI::Models::Location, nil>, nil]
        #
        #   @param primary_email [String, nil] The email of the main administrator on the account.
        #
        #   @param primary_phone_number [String, nil] The phone number of the main administrator on the account. Format: E.164, with e

        class Account < FinchAPI::Internal::Type::BaseModel
          # @!attribute account_name
          #   The name of the bank associated in the payroll/HRIS system.
          #
          #   @return [String, nil]
          required :account_name, String, nil?: true

          # @!attribute account_number
          #   10-12 digit number to specify the bank account
          #
          #   @return [String, nil]
          required :account_number, String, nil?: true

          # @!attribute account_type
          #   The type of bank account.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType, nil]
          required :account_type, enum: -> { FinchAPI::HRIS::HRISCompany::Account::AccountType }, nil?: true

          # @!attribute institution_name
          #   Name of the banking institution.
          #
          #   @return [String, nil]
          required :institution_name, String, nil?: true

          # @!attribute routing_number
          #   A nine-digit code that's based on the U.S. Bank location where your account was
          #   opened.
          #
          #   @return [String, nil]
          required :routing_number, String, nil?: true

          # @!method initialize(account_name:, account_number:, account_type:, institution_name:, routing_number:)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::HRISCompany::Account} for more details.
          #
          #   @param account_name [String, nil] The name of the bank associated in the payroll/HRIS system.
          #
          #   @param account_number [String, nil] 10-12 digit number to specify the bank account
          #
          #   @param account_type [Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType, nil] The type of bank account.
          #
          #   @param institution_name [String, nil] Name of the banking institution.
          #
          #   @param routing_number [String, nil] A nine-digit code that's based on the U.S. Bank location where your account was

          # The type of bank account.
          #
          # @see FinchAPI::Models::HRIS::HRISCompany::Account#account_type
          module AccountType
            extend FinchAPI::Internal::Type::Enum

            CHECKING = :checking
            SAVINGS = :savings

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Department < FinchAPI::Internal::Type::BaseModel
          # @!attribute name
          #   The department name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute parent
          #   The parent department, if present.
          #
          #   @return [FinchAPI::Models::HRIS::HRISCompany::Department::Parent, nil]
          required :parent, -> { FinchAPI::HRIS::HRISCompany::Department::Parent }, nil?: true

          # @!method initialize(name:, parent:)
          #   @param name [String, nil] The department name.
          #
          #   @param parent [FinchAPI::Models::HRIS::HRISCompany::Department::Parent, nil] The parent department, if present.

          # @see FinchAPI::Models::HRIS::HRISCompany::Department#parent
          class Parent < FinchAPI::Internal::Type::BaseModel
            # @!attribute name
            #   The parent department's name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!method initialize(name:)
            #   The parent department, if present.
            #
            #   @param name [String, nil] The parent department's name.
          end
        end

        # @see FinchAPI::Models::HRIS::HRISCompany#entity
        class Entity < FinchAPI::Internal::Type::BaseModel
          # @!attribute subtype
          #   The tax payer subtype of the company.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype, nil]
          required :subtype, enum: -> { FinchAPI::HRIS::HRISCompany::Entity::Subtype }, nil?: true

          # @!attribute type
          #   The tax payer type of the company.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type, nil]
          required :type, enum: -> { FinchAPI::HRIS::HRISCompany::Entity::Type }, nil?: true

          # @!method initialize(subtype:, type:)
          #   The entity type object.
          #
          #   @param subtype [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype, nil] The tax payer subtype of the company.
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type, nil] The tax payer type of the company.

          # The tax payer subtype of the company.
          #
          # @see FinchAPI::Models::HRIS::HRISCompany::Entity#subtype
          module Subtype
            extend FinchAPI::Internal::Type::Enum

            S_CORPORATION = :s_corporation
            C_CORPORATION = :c_corporation
            B_CORPORATION = :b_corporation

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The tax payer type of the company.
          #
          # @see FinchAPI::Models::HRIS::HRISCompany::Entity#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            LLC = :llc
            LP = :lp
            CORPORATION = :corporation
            SOLE_PROPRIETOR = :sole_proprietor
            NON_PROFIT = :non_profit
            PARTNERSHIP = :partnership
            COOPERATIVE = :cooperative

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
