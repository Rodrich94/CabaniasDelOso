class CreateCabins < ActiveRecord::Migration
  def change
    create_table :cabins do |t|
      t.integer :number
      t.string :description
      t.references :cabin_state_range, index: true

      t.timestamps
    end
  end
end
