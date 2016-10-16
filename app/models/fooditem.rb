class Fooditem < ApplicationRecord
has_many :orders, dependent: :destroy
validates :name, :section, :price, presence: true
validates :price, numericality: true


  
def image_url_or_default
if ima_url.present?
  ima_url
else
 "http://loremflickr.com/320/240/#{CGI.escape name}"  
end
end 

def self.find_by_section(section)
    if section
      where("section LIKE ?", "%#{section}%")
    else
      all
    end
  end

 def self.search(search)
    if search
      where("lower(name) LIKE ?", "%#{name.downcase}%")
    else
      all
    end
  end
end