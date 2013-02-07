class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :email, :null => false
      t.string :password, :null => false
      t.boolean :newsletter, :default => true

      t.timestamps
    end
      add_index("users", "email")
  end
end
