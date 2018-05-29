class Transfer < ApplicationRecord
   # Constants
  CATEGORIES = {:out => 0, :in => 1}

  # Enums
  enum category: CATEGORIES
  
  validades :description, :category, :price_cents, :date
  
  
  monetize :price_cents
end
