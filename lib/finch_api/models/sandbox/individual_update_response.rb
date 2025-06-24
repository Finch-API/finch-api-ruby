# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Individual#update
      class IndividualUpdateResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @return [String, nil]
        optional :id, String

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
        optional :residence, -> { FinchAPI::Location }, nil?: true

        # @!attribute ssn
        #   Social Security Number of the individual. This field is only available with the
        #   `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        #   body.
        #   [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        #
        #   @return [String, nil]
        optional :ssn, String, nil?: true

        # @!method initialize(id: nil, dob: nil, emails: nil, encrypted_ssn: nil, ethnicity: nil, first_name: nil, gender: nil, last_name: nil, middle_name: nil, phone_numbers: nil, preferred_name: nil, residence: nil, ssn: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Sandbox::IndividualUpdateResponse} for more details.
        #
        #   @param id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        #
        #   @param dob [String, nil]
        #
        #   @param emails [Array<FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email>, nil]
        #
        #   @param encrypted_ssn [String, nil] Social Security Number of the individual in **encrypted** format. This field is
        #
        #   @param ethnicity [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity, nil] The EEOC-defined ethnicity of the individual.
        #
        #   @param first_name [String, nil] The legal first name of the individual.
        #
        #   @param gender [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender, nil] The gender of the individual.
        #
        #   @param last_name [String, nil] The legal last name of the individual.
        #
        #   @param middle_name [String, nil] The legal middle name of the individual.
        #
        #   @param phone_numbers [Array<FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber, nil>, nil]
        #
        #   @param preferred_name [String, nil] The preferred name of the individual.
        #
        #   @param residence [FinchAPI::Models::Location, nil]
        #
        #   @param ssn [String, nil] Social Security Number of the individual. This field is only available with the

        class Email < FinchAPI::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [String, nil]
          optional :data, String

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type }, nil?: true

          # @!method initialize(data: nil, type: nil)
          #   @param data [String]
          #   @param type [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email::Type, nil]

          # @see FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            WORK = :work
            PERSONAL = :personal

            # @!method self.values
            #   @return [Array<Symbol>]
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

          # @!method self.values
          #   @return [Array<Symbol>]
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

          # @!method self.values
          #   @return [Array<Symbol>]
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

          # @!method initialize(data: nil, type: nil)
          #   @param data [String, nil]
          #   @param type [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber::Type, nil]

          # @see FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber#type
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
