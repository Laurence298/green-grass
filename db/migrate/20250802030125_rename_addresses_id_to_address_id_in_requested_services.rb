class RenameAddressesIdToAddressIdInRequestedServices < ActiveRecord::Migration[8.0]
  def change
    rename_column :requested_services, :addresses_id, :address_id
  end
end
