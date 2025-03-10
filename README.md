# Finch Ruby API library

The Finch Ruby library provides convenient access to the Finch REST API from any Ruby 3.0.0+
application.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for the most recent release of this gem can be found [on RubyDoc](https://gemdocs.org/gems/finch-api/latest).

The underlying REST API documentation can be found on [developer.tryfinch.com](https://developer.tryfinch.com/).

## Installation

To use this gem during the beta, install directly from GitHub with Bundler by
adding the following to your application's `Gemfile`:

```ruby
gem "finch-api", git: "https://github.com/Finch-API/finch-api-ruby", branch: "main"
```

To fetch an initial copy of the gem:

```sh
bundle install
```

To update the version used by your application when updates are pushed to
GitHub:

```sh
bundle update finch-api
```

## Usage

```ruby
require "bundler/setup"
require "finch-api"

finch = FinchAPI::Client.new(access_token: "My Access Token")

page = finch.hris.directory.list

puts(page.id)
```

### Errors

When the library is unable to connect to the API, or if the API returns a
non-success status code (i.e., 4xx or 5xx response), a subclass of
`FinchAPI::Error` will be thrown:

```ruby
begin
  company = finch.hris.company.retrieve
rescue FinchAPI::Error => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >=500       | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short
exponential backoff. Connection errors (for example, due to a network
connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors,
and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
finch = FinchAPI::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
finch.hris.directory.list(request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds.
Timeouts are applied separately to the initial connection and the overall request time,
so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
finch = FinchAPI::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
finch.hris.directory.list(request_options: {timeout: 5})
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the
library is in initial development and has a major version of `0`, APIs may change
at any time.

## Requirements

Ruby 3.0 or higher.
