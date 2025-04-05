# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Individual#update
      class IndividualUpdateResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute dob
        #
        #   @return [String, nil]
        optional :dob, String, nil?: true

        # @!attribute emails
        #
        #   @return [Array<FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email>, nil]
        optional :emails,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email] },
                 nil?: true

        # @!attribute encrypted_ssn
        #   Social Security Number of the individual in **encrypted** format. This field is
        #   only available with the `ssn` scope enabled and the
        #   `options: { include: ['ssn'] }` param set in the body.
        #
        #   @return [String, nil]
        optional :encrypted_ssn, String, nil?: true

        # @!attribute ethnicity
        #   The EEOC-defined ethnicity of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity, nil]
        optional :ethnicity,
                 enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity },
                 nil?: true

        # @!attribute first_name
        #   The legal first name of the individual.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute gender
        #   The gender of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender, nil]
        optional :gender, enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender }, nil?: true

        # @!attribute last_name
        #   The legal last name of the individual.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute middle_name
        #   The legal middle name of the individual.
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute phone_numbers
        #
        #   @return [Array<FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber, nil>, nil]
        optional :phone_numbers,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber, nil?: true] },
                 nil?: true

        # @!attribute preferred_name
        #   The preferred name of the individual.
        #
        #   @return [String, nil]
        optional :preferred_name, String, nil?: true

        # @!attribute residence
        #
        #   @return [FinchAPI::Models::Location, nil]
        optional :residence, -> { FinchAPI::Models::Location }, nil?: true

        # @!attribute ssn
        #   Social Security Number of the individual. This field is only available with the
        #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        #   body.
        #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        #
        #   @return [String, nil]
        optional :ssn, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param dob [String, nil]
        #   # @param emails [Array<FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email>, nil]
        #   # @param encrypted_ssn [String, nil]
        #   # @param ethnicity [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity, nil]
        #   # @param first_name [String, nil]
        #   # @param gender [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender, nil]
        #   # @param last_name [String, nil]
        #   # @param middle_name [String, nil]
        #   # @param phone_numbers [Array<FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber, nil>, nil]
        #   # @param preferred_name [String, nil]
        #   # @param residence [FinchAPI::Models::Location, nil]
        #   # @param ssn [String, nil]
        #   #
        #   def initialize(
        #     id: nil,
        #     dob: nil,
        #     emails: nil,
        #     encrypted_ssn: nil,
        #     ethnicity: nil,
        #     first_name: nil,
        #     gender: nil,
        #     last_name: nil,
        #     middle_name: nil,
        #     phone_numbers: nil,
        #     preferred_name: nil,
        #     residence: nil,
        #     ssn: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        class Email < FinchAPI::Internal::Type::BaseModel
          # @!attribute [r] data
          #
          #   @return [String, nil]
          optional :data, String

          # @!parse
          #   # @return [String]
          #   attr_writer :data

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type }, nil?: true

          # @!parse
          #   # @param data [String]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type, nil]
          #   #
          #   def initialize(data: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            WORK = :work
            PERSONAL = :personal

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # The EEOC-defined ethnicity of the individual.
        #
        # @see FinchAPI::Models::Sandbox::IndividualUpdateResponse#ethnicity
        module Ethnicity
          extend FinchAPI::Internal::Type::Enum

          ASIAN = :asian
          WHITE = :white
          BLACK_OR_AFRICAN_AMERICAN = :black_or_african_american
          NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER = :native_hawaiian_or_pacific_islander
          AMERICAN_INDIAN_OR_ALASKA_NATIVE = :american_indian_or_alaska_native
          HISPANIC_OR_LATINO = :hispanic_or_latino
          TWO_OR_MORE_RACES = :two_or_more_races
          DECLINE_TO_SPECIFY = :decline_to_specify

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # The gender of the individual.
        #
        # @see FinchAPI::Models::Sandbox::IndividualUpdateResponse#gender
        module Gender
          extend FinchAPI::Internal::Type::Enum

          FEMALE = :female
          MALE = :male
          OTHER = :other
          DECLINE_TO_SPECIFY = :decline_to_specify

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class PhoneNumber < FinchAPI::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [String, nil]
          optional :data, String, nil?: true

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type, nil]
          optional :type,
                   enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type },
                   nil?: true

          # @!parse
          #   # @param data [String, nil]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type, nil]
          #   #
          #   def initialize(data: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # @see FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            WORK = :work
            PERSONAL = :personal

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
