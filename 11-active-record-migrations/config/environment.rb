require 'pry'
require 'date'
require 'active_record'
require 'bundler/setup'
Bundler.require

options = {
  adapter: 'sqlite3',
  database: 'db/store.db'
}
ActiveRecord::Base.establish_connection(options)

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
