class CreateActors < ActiveRecord::Migration[5.1]
    def change
    create_table :actors do |t|
        t.string :first_name
        t.string :last_name
    end
    def list_roles
        self.characters.map  {|b| "#{b.name} - #{b.show.name}"}
    end
end 
end 