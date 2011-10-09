# encoding: utf-8
require_relative "init"

class App < Sinatra::Base
  set :sessions, true
  set :show_exceptions, false
  use Rack::Session::Memcache,
      key: 'rack.session.auth',
      memcache_server: "localhost:11211",
      expire_after: 3600

  set :root, File.dirname(__FILE__)
  set :public, Proc.new { File.join(root, "public") }

  get '/' do
    "hello"
  end

end