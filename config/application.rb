require 'rubygems'
require 'bundler'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
Bundler.require :default, (ENV['RACK_ENV'] || :development).to_sym

require 'sinatra/base'
require 'sinatra/contrib'
require 'active_support/dependencies'

ActiveSupport::Dependencies.autoload_paths += [
  '../app/controllers',
  '../app/models',
  '../app/helpers',
].map { |dir|  File.expand_path(dir, __dir__) }
