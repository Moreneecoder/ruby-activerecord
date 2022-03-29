class CreateUsers < ActiveRecord::Migration[6.1]
    def change
      # new code begins
      return if table_exists?
      # new code ends
  
      create_table :users do |t|
        t.string :name
      end     
    end
  
    def table_exists?
      ActiveRecord::Base.connection.table_exists? 'users'
    end
  end
  