class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      
      t.integer :user_id
      t.string :billing_first_name, :null => false
      t.string :billing_last_name, :null => false
      t.string :billing_street, :null => false
      t.string :billing_street2
      t.string :billing_city, :null => false
      t.string :billing_state, :null => false
      t.string :billing_zipcode, :null => false
      t.string :billing_ip_address

      t.timestamps
    end
      add_index("billing_addresses", "user_id")
  end
end
