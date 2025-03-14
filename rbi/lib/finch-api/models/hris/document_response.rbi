# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentResponse < FinchAPI::BaseModel
        # A stable Finch id for the document.
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The ID of the individual associated with the document. This will be null for
        #   employer-level documents.
        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def individual_id=(_)
        end

        # The type of document.
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # A URL to access the document. Format:
        #   `https://api.tryfinch.com/employer/documents/:document_id`.
        sig { returns(T.nilable(String)) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        # The year the document applies to, if available.
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

        # The type of document.
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
