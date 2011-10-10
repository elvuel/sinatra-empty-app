source :rubygems

gem 'sinatra', require: "sinatra/base"
gem 'rack'
gem "memcache-client"
gem "coffee-script"
gem "therubyracer" # Google V8 embedded within Ruby for gem ExecJS runtime support

group :development, :test do
  gem "ruby-debug19", require: "ruby-debug"
  #gem 'jasmine'
end

group :test do
  gem "rack-test", require: "rack/test"
  #gem "simplecov", require: false
  gem "minitest", require: 'minitest/spec'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'cucumber'
  gem 'json'
  gem "evergreen", "~> 1.0.0.rc"# there is no gem jasmine, evergreen submodule jasmine under lib jasmine
end
