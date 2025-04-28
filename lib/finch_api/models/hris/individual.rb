# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class Individual < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute dob
        #
        #   @return [String, nil]
        required :dob, String, nil?: true

        # @!attribute ethnicity
        #   The EEOC-defined ethnicity of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::Individual::Ethnicity, nil]
        required :ethnicity, enum: -> { FinchAPI::Models::HRIS::Individual::Ethnicity }, nil?: true

        # @!attribute first_name
        #   The legal first name of the individual.
        #
        #   @return [String, nil]
        required :first_name, String, nil?: true

        # @!attribute gender
        #   The gender of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::Individual::Gender, nil]
        required :gender, enum: -> { FinchAPI::Models::HRIS::Individual::Gender }, nil?: true

        # @!attribute last_name
        #   The legal last name of the individual.
        #
        #   @return [String, nil]
        required :last_name, String, nil?: true

        # @!attribute middle_name
        #   The legal middle name of the individual.
        #
        #   @return [String, nil]
        required :middle_name, String, nil?: true

        # @!attribute phone_numbers
        #
        #   @return [Array<FinchAPI::Models::HRIS::Individual::PhoneNumber, nil>, nil]
        required :phone_numbers,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Individual::PhoneNumber, nil?: true] },
                 nil?: true

        # @!attribute preferred_name
        #   The preferred name of the individual.
        #
        #   @return [String, nil]
        required :preferred_name, String, nil?: true

        # @!attribute residence
        #
        #   @return [FinchAPI::Models::Location, nil]
        required :residence, -> { FinchAPI::Models::Location }, nil?: true

        # @!attribute emails
        #
        #   @return [Array<FinchAPI::Models::HRIS::Individual::Email>, nil]
        optional :emails,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Individual::Email] },
                 nil?: true

        # @!attribute encrypted_ssn
        #   Social Security Number of the individual in **encrypted** format. This field is
        #   only available with the `ssn` scope enabled and the
        #   `options: { include: ['ssn'] }` param set in the body.
        #
        #   @return [String, nil]
        optional :encrypted_ssn, String, nil?: true

        # @!attribute ssn
        #   Social Security Number of the individual. This field is only available with the
        #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        #   body.
        #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        #
        #   @return [String, nil]
        optional :ssn, String, nil?: true

        # @!method initialize(id:, dob:, ethnicity:, first_name:, gender:, last_name:, middle_name:, phone_numbers:, preferred_name:, residence:, emails: nil, encrypted_ssn: nil, ssn: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::Individual} for more details.
        #
        #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @param dob [String, nil]
        #
        #   @param ethnicity [Symbol, FinchAPI::Models::HRIS::Individual::Ethnicity, nil] The EEOC-defined ethnicity of the individual.
        #
        #   @param first_name [String, nil] The legal first name of the individual.
        #
        #   @param gender [Symbol, FinchAPI::Models::HRIS::Individual::Gender, nil] The gender of the individual.
        #
        #   @param last_name [String, nil] The legal last name of the individual.
        #
        #   @param middle_name [String, nil] The legal middle name of the individual.
        #
        #   @param phone_numbers [Array<FinchAPI::Models::HRIS::Individual::PhoneNumber, nil>, nil]
        #
        #   @param preferred_name [String, nil] The preferred name of the individual.
        #
        #   @param residence [FinchAPI::Models::Location, nil]
        #
        #   @param emails [Array<FinchAPI::Models::HRIS::Individual::Email>, nil]
        #
        #   @param encrypted_ssn [String, nil] Social Security Number of the individual in **encrypted** format. This field is
        #   ...
        #
        #   @param ssn [String, nil] Social Security Number of the individual. This field is only available with the
        #   ...

        # The EEOC-defined ethnicity of the individual.
        #
        # @see FinchAPI::Models::HRIS::Individual#ethnicity
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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The gender of the individual.
        #
        # @see FinchAPI::Models::HRIS::Individual#gender
        module Gender
          extend FinchAPI::Internal::Type::Enum

          FEMALE = :female
          MALE = :male
          OTHER = :other
          DECLINE_TO_SPECIFY = :decline_to_specify

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class PhoneNumber < FinchAPI::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [String, nil]
          required :data, String, nil?: true

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type, nil]
          required :type, enum: -> { FinchAPI::Models::HRIS::Individual::PhoneNumber::Type }, nil?: true

          # @!method initialize(data:, type:)
          #   @param data [String, nil]
          #   @param type [Symbol, FinchAPI::Models::HRIS::Individual::PhoneNumber::Type, nil]

          # @see FinchAPI::Models::HRIS::Individual::PhoneNumber#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            WORK = :work
            PERSONAL = :personal

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Email < FinchAPI::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [String]
          required :data, String

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::Individual::Email::Type, nil]
          required :type, enum: -> { FinchAPI::Models::HRIS::Individual::Email::Type }, nil?: true

          # @!method initialize(data:, type:)
          #   @param data [String]
          #   @param type [Symbol, FinchAPI::Models::HRIS::Individual::Email::Type, nil]

          # @see FinchAPI::Models::HRIS::Individual::Email#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            WORK = :work
            PERSONAL = :personal

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
