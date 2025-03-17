# frozen_string_literal: true

require_relative "lib/finch-api/version"

Gem::Specification.new do |s|
  s.name = "finch-api"
  s.version = FinchAPI::VERSION
  s.summary = "Ruby library to access the Finch API"
  s.authors = ["Finch"]
  s.email = "founders@tryfinch.com"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/finch-api"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Finch-API/finch-api-ruby"
  s.metadata["rubygems_mfa_required"] = "false"
end
