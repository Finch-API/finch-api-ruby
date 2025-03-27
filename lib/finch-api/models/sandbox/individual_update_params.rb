# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class IndividualUpdateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute dob
        #
        #   @return [String, nil]
        optional :dob, String, nil?: true

        # @!attribute emails
        #
        #   @return [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::Email>, nil]
        optional :emails,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::IndividualUpdateParams::Email] },
                 nil?: true

        # @!attribute encrypted_ssn
        #   Social Security Number of the individual in **encrypted** format. This field is
        #     only available with the `ssn` scope enabled and the
        #     `options: { include: ['ssn'] }` param set in the body.
        #
        #   @return [String, nil]
        optional :encrypted_ssn, String, nil?: true

        # @!attribute ethnicity
        #   The EEOC-defined ethnicity of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity, nil]
        optional :ethnicity, enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity }, nil?: true

        # @!attribute first_name
        #   The legal first name of the individual.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute gender
        #   The gender of the individual.
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender, nil]
        optional :gender, enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender }, nil?: true

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
        #   @return [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber, nil>, nil]
        optional :phone_numbers,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber, nil?: true] },
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
        #     `ssn` scope enabled and the `options: { include: ['ssn'] }` param set in the
        #     body.
        #     [Click here to learn more about enabling the SSN field](/developer-resources/Enable-SSN-Field).
        #
        #   @return [String, nil]
        optional :ssn, String, nil?: true

        # @!parse
        #   # @param dob [String, nil]
        #   # @param emails [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::Email>, nil]
        #   # @param encrypted_ssn [String, nil]
        #   # @param ethnicity [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Ethnicity, nil]
        #   # @param first_name [String, nil]
        #   # @param gender [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Gender, nil]
        #   # @param last_name [String, nil]
        #   # @param middle_name [String, nil]
        #   # @param phone_numbers [Array<FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber, nil>, nil]
        #   # @param preferred_name [String, nil]
        #   # @param residence [FinchAPI::Models::Location, nil]
        #   # @param ssn [String, nil]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
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
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class Email < FinchAPI::BaseModel
          # @!attribute [r] data
          #
          #   @return [String, nil]
          optional :data, String

          # @!parse
          #   # @return [String]
          #   attr_writer :data

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type, nil]
          optional :type, enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type }, nil?: true

          # @!parse
          #   # @param data [String]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::Email::Type, nil]
          #   #
          #   def initialize(data: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          module Type
            extend FinchAPI::Enum

            WORK = :work
            PERSONAL = :personal

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # The EEOC-defined ethnicity of the individual.
        module Ethnicity
          extend FinchAPI::Enum

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
        module Gender
          extend FinchAPI::Enum

          FEMALE = :female
          MALE = :male
          OTHER = :other
          DECLINE_TO_SPECIFY = :decline_to_specify

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class PhoneNumber < FinchAPI::BaseModel
          # @!attribute data
          #
          #   @return [String, nil]
          optional :data, String, nil?: true

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type, nil]
          optional :type,
                   enum: -> { FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type },
                   nil?: true

          # @!parse
          #   # @param data [String, nil]
          #   # @param type [Symbol, FinchAPI::Models::Sandbox::IndividualUpdateParams::PhoneNumber::Type, nil]
          #   #
          #   def initialize(data: nil, type: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          module Type
            extend FinchAPI::Enum

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
