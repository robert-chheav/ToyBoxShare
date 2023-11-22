class AvailabilityValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    reservations = Reservation.where(["user_id =?", record.user_id])
    date_ranges = reservations.map { |b| b.booking_date_start..b.booking_date_end }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end
