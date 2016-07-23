class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :from
      t.date :to
      t.integer :pax
      t.references :client, index: true
      t.references :cabin, index: true
      t.references :reservation_state, index: true

      t.timestamps
    end
  end
end
