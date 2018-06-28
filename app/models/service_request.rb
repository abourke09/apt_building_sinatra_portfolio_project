class ServiceRequest < ActiveRecord::Base
  belongs_to :resident
  validates :message,  presence: true
end
