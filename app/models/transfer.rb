class Transfer < ApplicationRecord
   # Constants
  CATEGORIES = {:out => 0, :in => 1}

  # Enums
  enum category: CATEGORIES
  
  validates :description, :category, :price_cents, :date, presence: true
  
  
  monetize :price_cents
end
