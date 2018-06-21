class Resident < ActiveRecord::Base
  has_secure_password
  has_many :service_requests
  belongs_to :apartment_building
end
