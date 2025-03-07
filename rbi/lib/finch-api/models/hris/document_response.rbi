# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def individual_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(String)) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        sig { returns(T.nilable(Float)) }
        def year
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def year=(_)
        end

        sig do
          params(
            id: String,
            individual_id: T.nilable(String),
            type: Symbol,
            url: String,
            year: T.nilable(Float)
          )
            .returns(T.attached_class)
        end
        def self.new(id: nil, individual_id: nil, type: nil, url: nil, year: nil)
        end

        sig do
          override
            .returns({
                       id: String,
                       individual_id: T.nilable(String),
                       type: Symbol,
                       url: String,
                       year: T.nilable(Float)
                     })
        end
        def to_hash
        end

        class Type < FinchAPI::Enum
          abstract!

          W4_2020 = :w4_2020
          W4_2005 = :w4_2005

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
