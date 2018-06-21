class ServiceRequest < ActiveRecord::Base
  belongs_to :resident
  belongs_to :building, through: resident
end
