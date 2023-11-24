class Toy < ApplicationRecord
  has_one_attached :picture_image
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :name, :price, :description, :age, :location, presence: true
  geocoded_by :location
  after_validation :geocode

  scope :age_0_6_MONTHS, -> { where(age: "0-6 MONTHS") }
  scope :age_6_12_MONTHS, -> { where(age: "6-12 MONTHS") }
  scope :age_1_3_YEARS, -> { where(age: "1-3 YEARS") }
  scope :age_3_6_YEARS, -> { where(age: "3-6 YEARS") }
  scope :age_6_12_YEARS, -> { where(age: "6-12 YEARS") }
  scope :age_12_YEARS, -> { where(age: "12+ YEARS") }

  include PgSearch::Model
end
