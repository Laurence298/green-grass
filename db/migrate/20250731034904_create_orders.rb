class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :order_type

      t.timestamps
    end
  end
end
