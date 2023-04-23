Why do we need Rails Migrations?
We use rails migration so that we can use ruby to change the database and write ruby code which is like sql query but that code
will be independent of the database that we use hence platforms can be changed easily.

What is the difference between a change method and up-down methods in Rails Migration.
In rails migration we have ways of changing or altering something in database such as by up-down or by change method.

The change method automatically detects which is to be reverted according to the commands in the change method. But manual reverting
is not possible in change method. Only specific rails coventions can be used in change method.

The up-down method is more flexible as we can manually give which is to be reverted or again redo that is we can also make forward
changes to occur in database migration.

What are schema files used for?

The schema files are used to keep the most latest and current state of database schema. For more than one migration it schema.rb 
is used to find the structures.

What is the usage of change_table and change_column? Explain with an example.
Change table is used for adding or removing coloums or renaming them
class AddColumnToUser < ActiveRecord::Migration[6.1]
    def change
        change_table :users do |tble|
        tble.change :address, :string
        tble.string :new_name
        end    
    end
end

Change coloumn is not reversible and it is used to modify any coloumn to add,remove or change anything

class ChangeColumnTypeInUsers < ActiveRecord::Migration[6.1]
    def change
        change_column :salary, :integer
    end
end
