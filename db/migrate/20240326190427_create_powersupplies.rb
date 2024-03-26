class CreatePowersupplies < ActiveRecord::Migration[7.1]
  def change
    create_table :powersupplies do |t|
      t.string :name
      t.decimal :price
      t.string :type
      t.string :efficienty
      t.integer :wattage
      t.string :modular
      t.string :color

      t.timestamps
    end
  end
end
