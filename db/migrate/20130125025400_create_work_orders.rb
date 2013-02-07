class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      
      t.integer  :contractor_id
      t.datetime :work_order_creation_time
      t.datetime :work_order_complete_by
      t.datetime :work_order_done
      t.integer  :work_order_status
      t.string   :work_order_assigned_to
      t.string   :work_order_tasks
      t.text     :work_order_notes
      t.decimal  :work_order_amount, :precision => 8, :scale => 2
      

      t.timestamps
    end
    add_index("work_orders", "work_order_status")
  end
end
