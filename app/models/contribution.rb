class Contribution < ApplicationRecord
  belongs_to :project, counter_cache: true
  belongs_to :user, counter_cache: true
end
