class Recipe < ApplicationRecord
    belongs_to :user
    validates :title, :price, :duration, :description, :user_id, presence: true
end
