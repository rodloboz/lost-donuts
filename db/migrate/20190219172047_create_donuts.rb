class CreateDonuts < ActiveRecord::Migration[5.2]
  def change
    create_table :donuts do |t|
      t.string :shape
      t.string :flavour
      t.integer :price

      t.timestamps
    end
  end
end
