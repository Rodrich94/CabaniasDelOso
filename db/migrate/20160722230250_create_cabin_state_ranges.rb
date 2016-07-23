class CreateCabinStateRanges < ActiveRecord::Migration
  def change
    create_table :cabin_state_ranges do |t|
      t.date :from
      t.date :to
      t.references :cabin, index: true      
      t.references :cabin_state, index: true

      t.timestamps
    end
  end
end
