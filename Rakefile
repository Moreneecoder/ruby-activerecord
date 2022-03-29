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

  desc "Drop the database"
  task :drop do
    ActiveRecord::Base.establish_connection(db_connector)
    db_drop = ActiveRecord::Base.connection.drop_database('active_record')
    puts "Database deleted." if db_drop
  end

  desc "Migrate the database"
    task :migrate do
      require_relative './migrations/migrator.rb'

      db_connector['database'] = 'active_record'
      ActiveRecord::Base.establish_connection(db_connector)

      db_migrate = Migrator.new.migrate
      puts "Database migrations ran successfully." if db_migrate
    end
end
