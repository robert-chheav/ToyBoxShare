class Toy < ApplicationRecord
  has_one_attached :image_url
  belongs_to :user
  validates :name, :price, :description, :age, :location, presence: true
  geocoded_by :location
  after_validation :geocode
end
