class Service < ApplicationRecord
  has_many :requested_services
  has_many :customers, through: :requested_services
  has_many :service_prices

end
