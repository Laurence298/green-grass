class CreateOrderTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :order_types do |t|
      t.integer :order_type_id
      t.string :name
      t.timestamps

    end
  end
end
