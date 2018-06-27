class ServiceRequest < ActiveRecord::Base
  belongs_to :resident
  validates :message,  presence: true

#  belongs_to :building, through: resident
end
