class Project < ApplicationRecord
	has_many :contributions
	has_many :users, through: :contributions
	
	monetize :price_cents

    scope :search, ->(term, page = 1) {
    where("lower(name) LIKE ?", "%#{term.downcase}%").order(:name).page(page).per(6)
  }
end
