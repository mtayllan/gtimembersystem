class Project < ApplicationRecord
	has_many :contributions, dependent: :destroy
	has_many :users, through: :contributions
	
	monetize :price_cents
	
	validates :name, :price_cents, :client, :start_date, presence: true

  scope :search, ->(term, page = 1) {
    where("lower(name) LIKE ?", "%#{term.downcase}%").order("LOWER(name)").page(page).per(6)
  }
end
