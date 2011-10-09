# encoding: utf-8
require "bundler/setup"

Bundler.require :default

case ENV.fetch("RACK_ENV")
  when "test"
    Bundler.require :test
    Bundler.require :development
  when "development"
    Bundler.require :development
end