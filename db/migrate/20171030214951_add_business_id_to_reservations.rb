class AddBusinessIdToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :business_id, :integer
    add_column :reservations, :user_id, :integer
  end
end
