class AddForeignKeysToWorkOrder < ActiveRecord::Migration
  def change
  	change_table :work_orders do |t|
  	  t.integer :technician_id
  	  t.integer :customer_id
  	end

  	# http://guides.rubyonrails.org/active_record_migrations.html#foreign-keys
  	add_foreign_key :work_orders, :technicians
  	add_foreign_key :work_orders, :customers 
  end
end
