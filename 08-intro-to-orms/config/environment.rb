require 'date'
require 'bundler/setup'
Bundler.require

DB = {
  conn: SQLite3::Database.new('db/redlinernotes.db')
}
DB[:conn].results_as_hash = true


require_all 'app'
