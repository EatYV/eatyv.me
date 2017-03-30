class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :first_name, :last_name, :persons, :time, :message, :user_id, :recipe_id, presence: true
end
