require 'date'
require 'bundler/setup'
Bundler.require

DB = {
  conn: SQLite3::Database.new('db/redlinernotes.db')
}
# results_as_hash?

require_all 'app'
