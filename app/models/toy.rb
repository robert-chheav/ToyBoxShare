class Toy < ApplicationRecord
  has_many :reservations, dependent: :destroy 

  belongs_to :user
  validates :name, :price, :description, :age, :image_url, :location, presence: true
  geocoded_by :location
  after_validation :geocode
end
