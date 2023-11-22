class Reservation < ApplicationRecord
  validates :booking_date_end, :booking_date_start, presence: true
  belongs_to :user
  belongs_to :toy
  validate :booking_date_end_after_booking_date_start
  validates :booking_date_start, :booking_date_end, overlap: { scope: 'toy_id', message_content: "This toy is already booked on this date."}

  private

  def booking_date_end_after_booking_date_start
    return if booking_date_end.blank? || booking_date_start.blank?

    if booking_date_end < booking_date_start
      errors.add(:booking_date_end, "must be after the start date")
    end
  end
end
