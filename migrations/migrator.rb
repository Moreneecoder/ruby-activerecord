require_relative './create_users'

class Migrator
    def migrate
        CreateUsers.new.change
    end
end  