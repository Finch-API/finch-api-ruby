# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class HRISCompany < FinchAPI::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute accounts
        #   An array of bank account objects associated with the payroll/HRIS system.
        #
        #   @return [Array<FinchAPI::Models::HRIS::HRISCompany::Account>, nil]
        required :accounts, -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::HRISCompany::Account] }, nil?: true

        # @!attribute departments
        #   The array of company departments.
        #
        #   @return [Array<FinchAPI::Models::HRIS::HRISCompany::Department, nil>, nil]
        required :departments,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::HRISCompany::Department, nil?: true] },
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
        required :entity, -> { FinchAPI::Models::HRIS::HRISCompany::Entity }, nil?: true

        # @!attribute legal_name
        #   The legal name of the company.
        #
        #   @return [String, nil]
        required :legal_name, String, nil?: true

        # @!attribute locations
        #
        #   @return [Array<FinchAPI::Models::Location, nil>, nil]
        required :locations, -> { FinchAPI::ArrayOf[FinchAPI::Models::Location, nil?: true] }, nil?: true

        # @!attribute primary_email
        #   The email of the main administrator on the account.
        #
        #   @return [String, nil]
        required :primary_email, String, nil?: true

        # @!attribute primary_phone_number
        #   The phone number of the main administrator on the account. Format: `XXXXXXXXXX`
        #
        #   @return [String, nil]
        required :primary_phone_number, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param accounts [Array<FinchAPI::Models::HRIS::HRISCompany::Account>, nil]
        #   # @param departments [Array<FinchAPI::Models::HRIS::HRISCompany::Department, nil>, nil]
        #   # @param ein [String, nil]
        #   # @param entity [FinchAPI::Models::HRIS::HRISCompany::Entity, nil]
        #   # @param legal_name [String, nil]
        #   # @param locations [Array<FinchAPI::Models::Location, nil>, nil]
        #   # @param primary_email [String, nil]
        #   # @param primary_phone_number [String, nil]
        #   #
        #   def initialize(
        #     id:,
        #     accounts:,
        #     departments:,
        #     ein:,
        #     entity:,
        #     legal_name:,
        #     locations:,
        #     primary_email:,
        #     primary_phone_number:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class Account < FinchAPI::BaseModel
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
          #   @return [Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType, nil]
          optional :account_type, enum: -> { FinchAPI::Models::HRIS::HRISCompany::Account::AccountType }, nil?: true

          # @!attribute institution_name
          #   Name of the banking institution.
          #
          #   @return [String, nil]
          optional :institution_name, String, nil?: true

          # @!attribute routing_number
          #   A nine-digit code that's based on the U.S. Bank location where your account was
          #     opened.
          #
          #   @return [String, nil]
          optional :routing_number, String, nil?: true

          # @!parse
          #   # @param account_name [String, nil]
          #   # @param account_number [String, nil]
          #   # @param account_type [Symbol, FinchAPI::Models::HRIS::HRISCompany::Account::AccountType, nil]
          #   # @param institution_name [String, nil]
          #   # @param routing_number [String, nil]
          #   #
          #   def initialize(account_name: nil, account_number: nil, account_type: nil, institution_name: nil, routing_number: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # @abstract
          #
          # The type of bank account.
          #
          # @example
          # ```ruby
          # case account_type
          # in :checking
          #   # ...
          # in :savings
          #   # ...
          # end
          # ```
          class AccountType < FinchAPI::Enum
            CHECKING = :checking
            SAVINGS = :savings

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class Department < FinchAPI::BaseModel
          # @!attribute name
          #   The department name.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute parent
          #   The parent department, if present.
          #
          #   @return [FinchAPI::Models::HRIS::HRISCompany::Department::Parent, nil]
          optional :parent, -> { FinchAPI::Models::HRIS::HRISCompany::Department::Parent }, nil?: true

          # @!parse
          #   # @param name [String, nil]
          #   # @param parent [FinchAPI::Models::HRIS::HRISCompany::Department::Parent, nil]
          #   #
          #   def initialize(name: nil, parent: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          class Parent < FinchAPI::BaseModel
            # @!attribute name
            #   The parent department's name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!parse
            #   # The parent department, if present.
            #   #
            #   # @param name [String, nil]
            #   #
            #   def initialize(name: nil, **) = super

            # def initialize: (Hash | FinchAPI::BaseModel) -> void
          end
        end

        class Entity < FinchAPI::BaseModel
          # @!attribute subtype
          #   The tax payer subtype of the company.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype, nil]
          optional :subtype, enum: -> { FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype }, nil?: true

          # @!attribute type
          #   The tax payer type of the company.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::HRIS::HRISCompany::Entity::Type }, nil?: true

          # @!parse
          #   # The entity type object.
          #   #
          #   # @param subtype [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Subtype, nil]
          #   # @param type [Symbol, FinchAPI::Models::HRIS::HRISCompany::Entity::Type, nil]
          #   #
          #   def initialize(subtype: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # @abstract
          #
          # The tax payer subtype of the company.
          #
          # @example
          # ```ruby
          # case subtype
          # in :s_corporation
          #   # ...
          # in :c_corporation
          #   # ...
          # in :b_corporation
          #   # ...
          # end
          # ```
          class Subtype < FinchAPI::Enum
            S_CORPORATION = :s_corporation
            C_CORPORATION = :c_corporation
            B_CORPORATION = :b_corporation

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # The tax payer type of the company.
          #
          # @example
          # ```ruby
          # case type
          # in :llc
          #   # ...
          # in :lp
          #   # ...
          # in :corporation
          #   # ...
          # in :sole_proprietor
          #   # ...
          # in :non_profit
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Type < FinchAPI::Enum
            LLC = :llc
            LP = :lp
            CORPORATION = :corporation
            SOLE_PROPRIETOR = :sole_proprietor
            NON_PROFIT = :non_profit
            PARTNERSHIP = :partnership
            COOPERATIVE = :cooperative

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
