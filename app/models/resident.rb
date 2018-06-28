class Resident < ActiveRecord::Base
  has_secure_password
  has_many :service_requests
  belongs_to :building
  validates :username,  uniqueness: true
  validates :username,  presence: true
  validates :name,  presence: true
  validates :building_id,  presence: true
  validates :apartment_number,  presence: true


  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Resident.all.find{|resident| resident.slug == slug}
  end

end
