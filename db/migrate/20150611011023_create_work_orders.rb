class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
