class Reservation < ApplicationRecord
  validates :booking_date_end, :booking_date_start, presence: true
  belongs_to :user
  belongs_to :toy
end
