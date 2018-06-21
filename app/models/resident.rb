class Resident < ActiveRecord::Base
  has_secure_password
  has_many :service_requests
  belongs_to :building

  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Resident.all.find{|resident| resident.slug == slug}
  end

end
