class Customer < ApplicationRecord
  has_many :requested_services
  has_many :services, through: :requested_services
end
