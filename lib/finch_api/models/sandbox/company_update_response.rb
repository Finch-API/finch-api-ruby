# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Company#update
      class CompanyUpdateResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute accounts
        #   An array of bank account objects associated with the payroll/HRIS system.
        #
        #   @return [Array<FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account>, nil]
        required :accounts,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account] },
                 nil?: true

        # @!attribute departments
        #   The array of company departments.
        #
        #   @return [Array<FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department, nil>, nil]
        required :departments,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department, nil?: true] },
                 nil?: true

        # @!attribute ein
        #   The employer identification number.
        #
        #   @return [String, nil]
        required :ein, String, nil?: true

        # @!attribute entity
        #   The entity type object.
        #
        #   @return [FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity, nil]
        required :entity, -> { FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity }, nil?: true

        # @!attribute legal_name
        #   The legal name of the company.
        #
        #   @return [String, nil]
        required :legal_name, String, nil?: true

        # @!attribute locations
        #
        #   @return [Array<FinchAPI::Models::Location, nil>, nil]
        required :locations,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Location, nil?: true] },
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

        # @!method initialize(accounts:, departments:, ein:, entity:, legal_name:, locations:, primary_email:, primary_phone_number:)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Sandbox::CompanyUpdateResponse} for more details.
        #
        #   @param accounts [Array<FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account>, nil] An array of bank account objects associated with the payroll/HRIS system.
        #
        #   @param departments [Array<FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department, nil>, nil] The array of company departments.
        #
        #   @param ein [String, nil] The employer identification number.
        #
        #   @param entity [FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity, nil] The entity type object.
        #
        #   @param legal_name [String, nil] The legal name of the company.
        #
        #   @param locations [Array<FinchAPI::Models::Location, nil>, nil]
        #
        #   @param primary_email [String, nil] The email of the main administrator on the account.
        #
        #   @param primary_phone_number [String, nil] The phone number of the main administrator on the account. Format: E.164, with e
        #   ...

        class Account < FinchAPI::Internal::Type::BaseModel
          # @!attribute account_name
          #   The name of the bank associated in the payroll/HRIS system.
          #
          #   @return [String, nil]
          optional :account_name, String, nil?: true

          # @!attribute account_number
          #   10-12 digit number to specify the bank account
          #
          #   @return [String, nil]
          optional :account_number, String, nil?: true

          # @!attribute account_type
          #   The type of bank account.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account::AccountType, nil]
          optional :account_type,
                   enum: -> { FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account::AccountType },
                   nil?: true

          # @!attribute institution_name
          #   Name of the banking institution.
          #
          #   @return [String, nil]
          optional :institution_name, String, nil?: true

          # @!attribute routing_number
          #   A nine-digit code that's based on the U.S. Bank location where your account was
          #   opened.
          #
          #   @return [String, nil]
          optional :routing_number, String, nil?: true

          # @!method initialize(account_name: nil, account_number: nil, account_type: nil, institution_name: nil, routing_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account} for more details.
          #
          #   @param account_name [String, nil] The name of the bank associated in the payroll/HRIS system.
          #
          #   @param account_number [String, nil] 10-12 digit number to specify the bank account
          #
          #   @param account_type [Symbol, FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account::AccountType, nil] The type of bank account.
          #
          #   @param institution_name [String, nil] Name of the banking institution.
          #
          #   @param routing_number [String, nil] A nine-digit code that's based on the U.S. Bank location where your account was
          #   ...

          # The type of bank account.
          #
          # @see FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account#account_type
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
          optional :name, String, nil?: true

          # @!attribute parent
          #   The parent department, if present.
          #
          #   @return [FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department::Parent, nil]
          optional :parent, -> { FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department::Parent }, nil?: true

          # @!method initialize(name: nil, parent: nil)
          #   @param name [String, nil] The department name.
          #
          #   @param parent [FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department::Parent, nil] The parent department, if present.

          # @see FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department#parent
          class Parent < FinchAPI::Internal::Type::BaseModel
            # @!attribute name
            #   The parent department's name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!method initialize(name: nil)
            #   The parent department, if present.
            #
            #   @param name [String, nil] The parent department's name.
          end
        end

        # @see FinchAPI::Models::Sandbox::CompanyUpdateResponse#entity
        class Entity < FinchAPI::Internal::Type::BaseModel
          # @!attribute subtype
          #   The tax payer subtype of the company.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity::Subtype, nil]
          optional :subtype,
                   enum: -> { FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity::Subtype },
                   nil?: true

          # @!attribute type
          #   The tax payer type of the company.
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity::Type }, nil?: true

          # @!method initialize(subtype: nil, type: nil)
          #   The entity type object.
          #
          #   @param subtype [Symbol, FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity::Subtype, nil] The tax payer subtype of the company.
          #
          #   @param type [Symbol, FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity::Type, nil] The tax payer type of the company.

          # The tax payer subtype of the company.
          #
          # @see FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity#subtype
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
          # @see FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity#type
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
