require 'active_record'
require 'pg'

db_connector = {
    host: 'localhost',
    adapter: 'postgresql',
    schema_search_path: 'public'
}

# Establish a new connection pool
ActiveRecord::Base.establish_connection(db_connector)

# New code begins
# 'Through the established connection pool to PostgreSQL, create a new database'
db_create = ActiveRecord::Base.connection.create_database('active_record', {
   template: 'template0',
   encoding: 'unicode',
})

puts "Database created" if db_create
# New code ends