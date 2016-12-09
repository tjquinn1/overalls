class Essential < ActiveRecord::Base

	has_many :favorites
	has_many :catalogs
	has_many :labels
	has_many :members
	belongs_to :user

	accepts_nested_attributes_for :favorites,
								  reject_if: proc { |attributes| attributes['song_title'].blank? }, 
								  allow_destroy: true

	accepts_nested_attributes_for :catalogs,
								  reject_if: proc { |attributes| attributes['song_name', 'catalog_url_type', 'catalog_url'].blank? }, 
								  allow_destroy: true

	accepts_nested_attributes_for :labels,
								  reject_if: proc { |attributes| attributes['record_label'].blank? }, 
								  allow_destroy: true

	accepts_nested_attributes_for :members,
								  reject_if: proc { |attributes| attributes['band_member'].blank? }, 
								  allow_destroy: true

	validates :band_name, :bio, :image, presence: true 

	has_attached_file :image, styles: { medium: "400x400#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
