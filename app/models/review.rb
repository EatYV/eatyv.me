class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :grade, :comment, :user_id, :recipe_id, presence: true
end
