class Product < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	
	self.per_page = 5

	belongs_to :category
	belongs_to :user

	validates :category_id, presence:true
	validates :name, presence:true
	validates :description, presence:true
	validates :value, presence:true

	#upload image
	has_attached_file :avatar, styles: { medium: "500x500>", thumb: "150x100>" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  	validates :avatar, attachment_presence: true

  	scope :search_name, -> (name) {where("name LIKE ?", "%#{name}%")} 
  	scope :search_category, -> (category_id) {where("category_id = ?", category_id)} 
  	scope :search_name_category, -> (category_id, name) {where("category_id = ? AND name LIKE ?", category_id,"%#{name}%")} 
  	scope :search_all, -> {self.all}

end
