# typed: strong

module FinchAPI
  module Models
    module HRIS
      IndividualBenefit = Benefits::IndividualBenefit

      module Benefits
        class IndividualBenefit < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Benefits::IndividualBenefit,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(FinchAPI::HRIS::Benefits::IndividualBenefit::Body::Variants)
          end
          attr_accessor :body

          sig { returns(Integer) }
          attr_accessor :code

          sig { returns(String) }
          attr_accessor :individual_id

          sig do
            params(
              body:
                T.any(
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::OrHash,
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError::OrHash
                ),
              code: Integer,
              individual_id: String
            ).returns(T.attached_class)
          end
          def self.new(body:, code:, individual_id:)
          end

          sig do
            override.returns(
              {
                body:
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::Variants,
                code: Integer,
                individual_id: String
              }
            )
          end
          def to_hash
          end

          module Body
            extend FinchAPI::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0,
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError
                )
              end

            class UnionMember0 < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0,
                    FinchAPI::Internal::AnyHash
                  )
                end

              # If the benefit supports annual maximum, the amount in cents for this individual.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :annual_maximum

              # If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
              # for this individual.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :catch_up

              # Company contribution configuration. Supports fixed amounts (in cents),
              # percentage-based contributions (in basis points where 100 = 1%), or tiered
              # matching structures.
              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::Variants
                  )
                )
              end
              attr_accessor :company_contribution

              # Employee deduction configuration. Supports both fixed amounts (in cents) and
              # percentage-based contributions (in basis points where 100 = 1%).
              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::Variants
                  )
                )
              end
              attr_accessor :employee_deduction

              # Type for HSA contribution limit if the benefit is a HSA.
              sig do
                returns(
                  T.nilable(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                  )
                )
              end
              attr_accessor :hsa_contribution_limit

              sig do
                params(
                  annual_maximum: T.nilable(Integer),
                  catch_up: T.nilable(T::Boolean),
                  company_contribution:
                    T.nilable(
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::OrHash,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::OrHash,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::OrHash
                      )
                    ),
                  employee_deduction:
                    T.nilable(
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::OrHash,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::OrHash
                      )
                    ),
                  hsa_contribution_limit:
                    T.nilable(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::OrSymbol
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # If the benefit supports annual maximum, the amount in cents for this individual.
                annual_maximum:,
                # If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
                # for this individual.
                catch_up:,
                # Company contribution configuration. Supports fixed amounts (in cents),
                # percentage-based contributions (in basis points where 100 = 1%), or tiered
                # matching structures.
                company_contribution:,
                # Employee deduction configuration. Supports both fixed amounts (in cents) and
                # percentage-based contributions (in basis points where 100 = 1%).
                employee_deduction:,
                # Type for HSA contribution limit if the benefit is a HSA.
                hsa_contribution_limit: nil
              )
              end

              sig do
                override.returns(
                  {
                    annual_maximum: T.nilable(Integer),
                    catch_up: T.nilable(T::Boolean),
                    company_contribution:
                      T.nilable(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::Variants
                      ),
                    employee_deduction:
                      T.nilable(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::Variants
                      ),
                    hsa_contribution_limit:
                      T.nilable(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                      )
                  }
                )
              end
              def to_hash
              end

              # Company contribution configuration. Supports fixed amounts (in cents),
              # percentage-based contributions (in basis points where 100 = 1%), or tiered
              # matching structures.
              module CompanyContribution
                extend FinchAPI::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0,
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1,
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2
                    )
                  end

                class UnionMember0 < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  # where 100 = 1%). Not used for type=tiered.
                  sig { returns(Integer) }
                  attr_accessor :amount

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  sig do
                    returns(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Integer,
                      type:
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                    # where 100 = 1%). Not used for type=tiered.
                    amount:,
                    # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                    # (amount in basis points), or "tiered" (multi-tier matching).
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Integer,
                        type:
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    FIXED =
                      T.let(
                        :fixed,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  # where 100 = 1%). Not used for type=tiered.
                  sig { returns(Integer) }
                  attr_accessor :amount

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  sig do
                    returns(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Integer,
                      type:
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                    # where 100 = 1%). Not used for type=tiered.
                    amount:,
                    # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                    # (amount in basis points), or "tiered" (multi-tier matching).
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Integer,
                        type:
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PERCENT =
                      T.let(
                        :percent,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember2 < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # Array of tier objects defining employer match tiers based on employee
                  # contribution thresholds. Required when type=tiered.
                  sig do
                    returns(
                      T::Array[
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier
                      ]
                    )
                  end
                  attr_accessor :tiers

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  sig do
                    returns(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      tiers:
                        T::Array[
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier::OrHash
                        ],
                      type:
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Array of tier objects defining employer match tiers based on employee
                    # contribution thresholds. Required when type=tiered.
                    tiers:,
                    # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                    # (amount in basis points), or "tiered" (multi-tier matching).
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        tiers:
                          T::Array[
                            FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier
                          ],
                        type:
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  class Tier < FinchAPI::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier,
                          FinchAPI::Internal::AnyHash
                        )
                      end

                    sig { returns(Integer) }
                    attr_accessor :match

                    sig { returns(Integer) }
                    attr_accessor :threshold

                    sig do
                      params(match: Integer, threshold: Integer).returns(
                        T.attached_class
                      )
                    end
                    def self.new(match:, threshold:)
                    end

                    sig do
                      override.returns({ match: Integer, threshold: Integer })
                    end
                    def to_hash
                    end
                  end

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    TIERED =
                      T.let(
                        :tiered,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                sig do
                  override.returns(
                    T::Array[
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              # Employee deduction configuration. Supports both fixed amounts (in cents) and
              # percentage-based contributions (in basis points where 100 = 1%).
              module EmployeeDeduction
                extend FinchAPI::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0,
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1
                    )
                  end

                class UnionMember0 < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  # where 100 = 1%).
                  sig { returns(Integer) }
                  attr_accessor :amount

                  # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  # (amount in basis points).
                  sig do
                    returns(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Integer,
                      type:
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                    # where 100 = 1%).
                    amount:,
                    # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                    # (amount in basis points).
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Integer,
                        type:
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  # (amount in basis points).
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    FIXED =
                      T.let(
                        :fixed,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class UnionMember1 < FinchAPI::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1,
                        FinchAPI::Internal::AnyHash
                      )
                    end

                  # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  # where 100 = 1%).
                  sig { returns(Integer) }
                  attr_accessor :amount

                  # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  # (amount in basis points).
                  sig do
                    returns(
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  sig do
                    params(
                      amount: Integer,
                      type:
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                    # where 100 = 1%).
                    amount:,
                    # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                    # (amount in basis points).
                    type:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        amount: Integer,
                        type:
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  # (amount in basis points).
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PERCENT =
                      T.let(
                        :percent,
                        FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                sig do
                  override.returns(
                    T::Array[
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              # Type for HSA contribution limit if the benefit is a HSA.
              module HsaContributionLimit
                extend FinchAPI::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INDIVIDUAL =
                  T.let(
                    :individual,
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                  )
                FAMILY =
                  T.let(
                    :family,
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class BatchError < FinchAPI::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError,
                    FinchAPI::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :code

              sig { returns(String) }
              attr_accessor :message

              sig { returns(String) }
              attr_accessor :name

              sig { returns(T.nilable(String)) }
              attr_reader :finch_code

              sig { params(finch_code: String).void }
              attr_writer :finch_code

              sig do
                params(
                  code: Float,
                  message: String,
                  name: String,
                  finch_code: String
                ).returns(T.attached_class)
              end
              def self.new(code:, message:, name:, finch_code: nil)
              end

              sig do
                override.returns(
                  {
                    code: Float,
                    message: String,
                    name: String,
                    finch_code: String
                  }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  FinchAPI::HRIS::Benefits::IndividualBenefit::Body::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
