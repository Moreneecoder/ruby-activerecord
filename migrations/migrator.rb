require_relative './create_users'
require_relative './add_email_to_users'

class Migrator
    def migrate
        CreateUsers.new.change
        AddEmailToUsers.new.change
    end
end  