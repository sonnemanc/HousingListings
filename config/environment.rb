require "sinatra/activerecord"
require "require_all"

require_all "app"
require 'bundler/setup'
Bundler.require(:default)

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database:"db/development.sqlite"
)