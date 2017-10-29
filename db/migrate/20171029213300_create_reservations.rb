class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.time :start_time
      t.time :end_time
      t.date :date
      t.string :name_of_reserver
      t.integer :number_of_seat

      t.timestamps
    end
  end
end
