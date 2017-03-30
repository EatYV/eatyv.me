class Recipe < ApplicationRecord
    has_many :reservations, dependent: :destroy
    belongs_to :user
    validates :title, :price, :duration, :description, :user_id, presence: true
end
