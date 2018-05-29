class Event < ApplicationRecord

	has_many :participations, dependent: :destroy
	has_many :users, through: :participations
	
	validates :name, :date, :description, presence: true
	
	scope :search, ->(term, page = 1) {
    where("lower(name) LIKE ?", "%#{term.downcase}%").order("LOWER(name)").page(page).per(6)
  }
end
