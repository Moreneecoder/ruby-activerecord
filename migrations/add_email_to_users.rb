class AddEmailToUsers < ActiveRecord::Migration[6.1]
    def change      
        add_column :users, :email, :string unless column_exists?('email')
    end

    def column_exists?(col_name)
        ActiveRecord::Base.connection.column_exists?('users', col_name)
    end
end