class Building < ActiveRecord::Base
  has_many :residents
  has_many :service_requests, through: :residents 
end
