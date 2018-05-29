class Project < ApplicationRecord
	has_many :contributions, dependent: :destroy
	has_many :users, through: :contributions
	
	monetize :price_cents
end
