# Rakefile

require 'active_record'
require 'pg'

namespace :db do
  db_connector = {
    host: 'localhost',
    adapter: 'postgresql'
  }

  # new code begin
  desc "Create the database"
  task :create do
    ActiveRecord::Base.establish_connection(db_connector)
    db_create = ActiveRecord::Base.connection.create_database('active_record', {
      template: 'template0',
      encoding: 'unicode'     
    })

    puts "Database created." if db_create
  end
  # new code end
end
