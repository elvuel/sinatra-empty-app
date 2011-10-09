# encoding: utf-8

#require 'simplecov'
#SimpleCov.start do
#  add_filter '../init.rb'
#  add_filter '/spec/'
#  add_filter '/features/'
#  add_filter '/public/'
#end

ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'

require_relative '../app.rb'

def app() App end
include Rack::Test::Methods

#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec'
#include Capybara
#Capybara.app = App.new
