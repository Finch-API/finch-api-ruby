# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitsSupport < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def commuter
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def commuter=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def custom_post_tax
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def custom_post_tax=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def custom_pre_tax
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def custom_pre_tax=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def fsa_dependent_care
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def fsa_dependent_care=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def fsa_medical
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def fsa_medical=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def hsa_post
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def hsa_post=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def hsa_pre
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def hsa_pre=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def s125_dental
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def s125_dental=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def s125_medical
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def s125_medical=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def s125_vision
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def s125_vision=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def simple
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def simple=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)) }
        def simple_ira
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, FinchAPI::Util::AnyHash)))
        end
        def simple_ira=(_)
        end

        # Each benefit type and their supported features. If the benefit type is not
        #   supported, the property will be null
        sig do
          params(
            commuter: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            custom_post_tax: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            custom_pre_tax: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            fsa_dependent_care: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            fsa_medical: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            hsa_post: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            hsa_pre: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            s125_dental: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            s125_medical: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            s125_vision: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            simple: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
            simple_ira: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)
          )
            .returns(T.attached_class)
        end
        def self.new(
          commuter: nil,
          custom_post_tax: nil,
          custom_pre_tax: nil,
          fsa_dependent_care: nil,
          fsa_medical: nil,
          hsa_post: nil,
          hsa_pre: nil,
          s125_dental: nil,
          s125_medical: nil,
          s125_vision: nil,
          simple: nil,
          simple_ira: nil
        )
        end

        sig do
          override
            .returns(
              {
                commuter: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                custom_post_tax: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                custom_pre_tax: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                fsa_dependent_care: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                fsa_medical: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                hsa_post: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                hsa_pre: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                s125_dental: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                s125_medical: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                s125_vision: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                simple: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations),
                simple_ira: T.nilable(FinchAPI::Models::HRIS::BenefitFeaturesAndOperations)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
