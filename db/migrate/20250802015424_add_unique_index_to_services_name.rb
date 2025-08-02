class AddUniqueIndexToServicesName < ActiveRecord::Migration[8.0]
  def change
    add_index :services, :name, unique: true
  end
end
