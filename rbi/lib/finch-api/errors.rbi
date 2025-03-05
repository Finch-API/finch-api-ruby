# typed: strong

module FinchAPI
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    def cause
    end
  end

  class ConversionError < FinchAPI::Error
  end

  class APIError < FinchAPI::Error
    sig { returns(URI::Generic) }
    def url
    end

    sig { returns(T.nilable(Integer)) }
    def status
    end

    sig { returns(T.nilable(T.anything)) }
    def body
    end

    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < FinchAPI::APIError
    sig { void }
    def status
    end

    sig { void }
    def body
    end

    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < FinchAPI::APIConnectionError
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < FinchAPI::APIError
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:, message: nil)
    end

    sig { returns(Integer) }
    def status
    end

    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .void
    end
    def initialize(url:, status:, body:, request:, response:, message: nil)
    end
  end

  class BadRequestError < FinchAPI::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < FinchAPI::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < FinchAPI::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < FinchAPI::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < FinchAPI::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < FinchAPI::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < FinchAPI::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < FinchAPI::APIStatusError
    HTTP_STATUS = T.let((500..), T::Range[Integer])
  end
end
