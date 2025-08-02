class Address < ApplicationRecord
      self.table_name = "address"
    has_many :requested_services
end
