class ServiceRequest < ActiveRecord::Base
  belongs_to :resident
  belongs_to :apartment_building, through: resident
end
