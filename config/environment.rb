ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
#ActiveRecord::Base.establish_connection(
#  :adapter => "sqlite3",
#  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
#)

require_all 'app'
