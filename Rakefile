# Rakefile

require 'active_record'
require 'pg'

namespace :db do
  db_connector = {
    host: 'localhost',
    adapter: 'postgresql'
  }

  desc "Create the database"
  task :create do
    ActiveRecord::Base.establish_connection(db_connector)
    db_create = ActiveRecord::Base.connection.create_database('active_record', {
      template: 'template0',
      encoding: 'unicode'     
    })

    puts "Database created." if db_create
  end

  # new code begins
  desc "Drop the database"
  task :drop do
    ActiveRecord::Base.establish_connection(db_connector)
    db_drop = ActiveRecord::Base.connection.drop_database('active_record')
    puts "Database deleted." if db_drop
  end
  # new code end
end
