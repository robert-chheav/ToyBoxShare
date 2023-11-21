class Toy < ApplicationRecord
  belongs_to :user
  validates :name, :price, :description, :age, :image_url, :location, presence: true
end
