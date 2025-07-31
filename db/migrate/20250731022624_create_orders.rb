class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :order_id, primary_key: true
      t.integer :customer_id, foreign_key: true
      t.integer :order_type_id, foriegn_key: true
      t.timestamps
    end
  end
end
