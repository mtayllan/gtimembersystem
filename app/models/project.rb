class Project < ApplicationRecord
	has_many :contributions
	has_many :users, through: :contributions
end
