class Resident < ActiveRecord::Base
  has_many :service_requests
  belongs_to :building
  has_secure_password
  validates :username, :password, :name, :apartment_number, presence: true


  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Resident.all.find{|resident| resident.slug == slug}
  end

end
