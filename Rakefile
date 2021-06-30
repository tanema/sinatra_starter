require_relative 'config/application'

require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

task(:default).clear
task default: [:spec]

task(:spec).clear
RSpec::Core::RakeTask.new(:spec) { |t| t.verbose = false }

task(:console) { exec "irb -r irb/completion -r ./config/application.rb" }
