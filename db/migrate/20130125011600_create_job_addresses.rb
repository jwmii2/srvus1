class CreateJobAddresses < ActiveRecord::Migration
  def change
    create_table :job_addresses do |t|
      
      t.integer :user_id
      t.string :job_first_name, :null => false
      t.string :job_last_name, :null => false
      t.string :job_street, :null => false
      t.string :job_street2
      t.string :job_city, :null => false
      t.string :job_state, :null => false
      t.string :job_zipcode, :null => false
      t.string :job_phone
      t.string :job_mobile_phone
      t.decimal :job_latitude, :precision => 10, :scale => 6
      t.decimal :job_longitude, :precision => 10, :scale => 6
      
      t.timestamps
    end
      add_index("job_addresses", "user_id")
  end
end
