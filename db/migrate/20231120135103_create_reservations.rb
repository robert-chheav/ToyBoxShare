class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :booking_date_start
      t.date :booking_date_end
      t.references :user, null: false, foreign_key: true
      t.references :toy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
