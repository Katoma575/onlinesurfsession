class Favorite < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :movie, optional: true
  
  validates_uniqueness_of :movie_id, scope: :user_id
end
