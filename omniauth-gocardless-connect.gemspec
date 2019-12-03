# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-gocardless-connect/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-gocardless-connect'
  spec.authors       = ['Dan Quinney']
  spec.email         = ['danq@dial9.co.uk']
  spec.version       = OmniAuth::GocardlessConnect::VERSION

  spec.summary       = 'OmniAuth strategy for Gocardless Connect'
  spec.description   = 'OmniAuth strategy for Gocardless Connect'
  spec.homepage      = 'https://github.com/danquinney/omniauth-gocardless-connect'
  spec.license       = 'MIT'

  spec.files         = Dir.glob('{lib}/**/*')
  spec.require_paths = ['lib']

  spec.add_dependency 'omniauth', '~> 1.9'
  spec.add_dependency 'omniauth-oauth2', '~> 1.6'
end
