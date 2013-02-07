class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      
      t.integer :user_id
      t.string :contractor_contact_name, :null => false
      t.string :contractor_business_name
      t.string :contractor_address1, :null => false
      t.string :contractor_address2, :null => false
      t.string :contractor_city, :null => false
      t.string :contractor_state, :null => false
      t.string :contractor_zipcode, :null => false
      t.string :contractor_email, :null => false
      t.string :contractor_phone, :null => false
      t.string :contractor_mobile
      t.boolean :contractor_newsletter, :default => true
      t.string :contractor_insurance_company
      t.string :contractor_insurance_contact
      t.string :contractor_insurance_phone
      t.string :contractor_insurance_amount
      t.string :contractor_insurance_expires
      t.integer :contractor_jobs_completed, :default => 0
      t.decimal :contractor_rating, :default => 0, :precision => 4, :scale => 2
      t.decimal :contractor_latitude, :precision => 10, :scale => 6
      t.decimal :contractor_longitude, :precision => 10, :scale => 6

      t.timestamps
    end
      add_index("contractors", "email")
  end
end

