class Article < ActiveRecord::Base
	belongs_to :category

	validates :title, :content, presence: true
	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
