class CreateServicePrices < ActiveRecord::Migration[8.0]
  def change
    create_table :service_prices do |t|
      t.references :service, null: false, foreign_key: true
      t.decimal :price, precision: 10, scale: 2, null: false


      t.timestamps
    end
  end
end
