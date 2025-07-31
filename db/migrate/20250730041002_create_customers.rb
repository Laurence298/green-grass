class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers, primary_key: [:customer_id] do |t|
      t.integer :customer_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
