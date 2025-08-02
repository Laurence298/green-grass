class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street_address
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
