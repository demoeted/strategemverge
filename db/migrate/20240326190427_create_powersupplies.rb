class CreatePowersupplies < ActiveRecord::Migration[7.1]
  def change
    create_table :powersupplies do |t|
      t.string :name
      t.decimal :price
      t.string :efficiency
      t.integer :wattage
      t.string :modular
      t.string :color
      t.string :powersupplytype

      t.timestamps
    end
  end
end
