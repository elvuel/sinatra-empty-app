# encoding: utf-8

Given /^I am on the home page$/ do
  visit '/'
end

And /^I should see greeting$/ do
  page.has_content?('hello').must_equal true
end