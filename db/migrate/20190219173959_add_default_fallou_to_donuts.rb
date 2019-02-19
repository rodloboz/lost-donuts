class AddDefaultFallouToDonuts < ActiveRecord::Migration[5.2]
  def change
    change_column :donuts, :flavour, :string, default: "plain"
  end
end
