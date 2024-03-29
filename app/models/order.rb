class Order < ActiveRecord::Base
  searchable do
    string :title
    text :description
  end     
	
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :title #,:avatar
  self.per_page = 3

end
