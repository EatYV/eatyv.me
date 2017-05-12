class Recipe < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :reviews, dependent: :destroy
    belongs_to :user
    validates :title, :price, :image, :description, :date, :time, :location, :user_id, presence: true
    mount_uploader :image, ImageUploader
end
