class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :price, precision:10, scale:2
      t.date :from
      t.date :to
      t.references :cabin, index: true

      t.timestamps
    end
  end
end
