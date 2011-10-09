source :rubygems

gem 'sinatra', require: "sinatra/base"
gem 'rack'
gem "memcache-client"

group :development, :test do
  gem "ruby-debug19", require: "ruby-debug"
end

group :test do
  gem "rack-test", require: "rack/test"
  #gem "simplecov", require: false
  gem "minitest", require: 'minitest/spec'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'cucumber'
  gem 'json'
end
