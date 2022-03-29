require 'active_record'
require 'pg'

db_connector = {
    host: 'localhost',
    adapter: 'postgresql',
    schema_search_path: 'public'
}

# Establish a new connection pool
ActiveRecord::Base.establish_connection(db_connector)

# 'Through the established connection pool to PostgreSQL, delete this database'
db_drop = ActiveRecord::Base.connection.drop_database('active_record')

puts 'Database dropped' if db_drop
