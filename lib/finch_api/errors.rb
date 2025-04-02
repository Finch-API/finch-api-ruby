# frozen_string_literal: true

module FinchAPI
  module Errors
    class Error < StandardError
      # @!parse
      #   # @return [StandardError, nil]
      #   attr_accessor :cause
    end

    class ConversionError < FinchAPI::Errors::Error
    end

    class APIError < FinchAPI::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < FinchAPI::Errors::APIError
      # @!parse
      #   # @return [nil]
      #   attr_accessor :status

      # @!parse
      #   # @return [nil]
      #   attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < FinchAPI::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < FinchAPI::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [FinchAPI::Errors::APIStatusError]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          FinchAPI::Errors::BadRequestError.new(**kwargs)
        in 401
          FinchAPI::Errors::AuthenticationError.new(**kwargs)
        in 403
          FinchAPI::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          FinchAPI::Errors::NotFoundError.new(**kwargs)
        in 409
          FinchAPI::Errors::ConflictError.new(**kwargs)
        in 422
          FinchAPI::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          FinchAPI::Errors::RateLimitError.new(**kwargs)
        in (500..)
          FinchAPI::Errors::InternalServerError.new(**kwargs)
        else
          FinchAPI::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < FinchAPI::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end

  Error = FinchAPI::Errors::Error

  ConversionError = FinchAPI::Errors::ConversionError

  APIError = FinchAPI::Errors::APIError

  APIStatusError = FinchAPI::Errors::APIStatusError

  APIConnectionError = FinchAPI::Errors::APIConnectionError

  APITimeoutError = FinchAPI::Errors::APITimeoutError

  BadRequestError = FinchAPI::Errors::BadRequestError

  AuthenticationError = FinchAPI::Errors::AuthenticationError

  PermissionDeniedError = FinchAPI::Errors::PermissionDeniedError

  NotFoundError = FinchAPI::Errors::NotFoundError

  ConflictError = FinchAPI::Errors::ConflictError

  UnprocessableEntityError = FinchAPI::Errors::UnprocessableEntityError

  RateLimitError = FinchAPI::Errors::RateLimitError

  InternalServerError = FinchAPI::Errors::InternalServerError
end
