# encoding: utf-8

ENV['RACK_ENV'] = 'test'

require_relative "../../app"

require 'capybara'
require 'capybara/cucumber'
#require 'capybara/envjs'

Capybara.app = App
Capybara.default_selector = :css
Capybara.javascript_driver = :webkit #envjs => uncomment require 'capybara/envjs'

#require 'rspec'

class AppWorld
  #include Capybara
  include Capybara::DSL
 # uncomment require 'rspec'
  #include RSpec::Expectations
  #include RSpec::Matchers
end

World do
  AppWorld.new
end

# minitest => https://github.com/cucumber/cucumber/wiki/Using-MiniTest
require 'minitest/spec'
World(MiniTest::Assertions)
MiniTest::Spec.new(nil)