class Event < ApplicationRecord

	has_many :participations, dependent: :destroy
	has_many :users, through: :participations
	
	scope :search, ->(term, page = 1) {
    where("lower(name) LIKE ?", "%#{term.downcase}%").order(:name).page(page).per(6)
  }
end
