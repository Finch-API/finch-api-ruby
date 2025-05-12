# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitsSupport < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::BenefitsSupport, FinchAPI::Internal::AnyHash)
          end

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :commuter

        sig do
          params(
            commuter:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :commuter

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :custom_post_tax

        sig do
          params(
            custom_post_tax:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :custom_post_tax

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :custom_pre_tax

        sig do
          params(
            custom_pre_tax:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :custom_pre_tax

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :fsa_dependent_care

        sig do
          params(
            fsa_dependent_care:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :fsa_dependent_care

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :fsa_medical

        sig do
          params(
            fsa_medical:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :fsa_medical

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :hsa_post

        sig do
          params(
            hsa_post:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :hsa_post

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :hsa_pre

        sig do
          params(
            hsa_pre:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :hsa_pre

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :s125_dental

        sig do
          params(
            s125_dental:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :s125_dental

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :s125_medical

        sig do
          params(
            s125_medical:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :s125_medical

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :s125_vision

        sig do
          params(
            s125_vision:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :s125_vision

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :simple

        sig do
          params(
            simple:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :simple

        sig { returns(T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)) }
        attr_reader :simple_ira

        sig do
          params(
            simple_ira:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).void
        end
        attr_writer :simple_ira

        # Each benefit type and their supported features. If the benefit type is not
        # supported, the property will be null
        sig do
          params(
            commuter:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            custom_post_tax:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            custom_pre_tax:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            fsa_dependent_care:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            fsa_medical:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            hsa_post:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            hsa_pre:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            s125_dental:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            s125_medical:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            s125_vision:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            simple:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash),
            simple_ira:
              T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations::OrHash)
          ).returns(T.attached_class)
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
          override.returns(
            {
              commuter: T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              custom_post_tax:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              custom_pre_tax:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              fsa_dependent_care:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              fsa_medical:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              hsa_post: T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              hsa_pre: T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              s125_dental:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              s125_medical:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              s125_vision:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              simple: T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations),
              simple_ira:
                T.nilable(FinchAPI::HRIS::BenefitFeaturesAndOperations)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
