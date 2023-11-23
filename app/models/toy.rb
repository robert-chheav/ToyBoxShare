class Toy < ApplicationRecord
  has_one_attached :image_url
  belongs_to :user
  validates :name, :price, :description, :age, :location, presence: true
end
