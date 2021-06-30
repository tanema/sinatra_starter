$LOAD_PATH << File.expand_path(File.dirname(__FILE__))
require_relative 'config/application'
eval(File.read('./config/routes.rb'))
