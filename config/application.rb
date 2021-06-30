require 'rubygems'
require 'bundler'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
Bundler.require :default, (ENV['RACK_ENV'] || :development).to_sym

require 'sinatra/base'
require 'sinatra/contrib'
require 'active_support/dependencies'

ActiveSupport::Dependencies.autoload_paths += [
  File.expand_path('../app/controllers', __dir__),
  File.expand_path('../app/models', __dir__),
  File.expand_path('../app/helpers', __dir__),
]
