class Transfer < ApplicationRecord
   # Constants
  CATEGORIES = {:out => 0, :in => 1}

  # Enums
  enum category: CATEGORIES
  
  
  monetize :price_cents
end
