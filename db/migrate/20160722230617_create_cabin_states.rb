class CreateCabinStates < ActiveRecord::Migration
  def change
    create_table :cabin_states do |t|
      t.string :state
      t.references :color, index: true

      t.timestamps
    end
  end
end
