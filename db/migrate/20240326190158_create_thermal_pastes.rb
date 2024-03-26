class CreateThermalPastes < ActiveRecord::Migration[7.1]
  def change
    create_table :thermal_pastes do |t|
      t.string :name
      t.decimal :price
      t.decimal :amount

      t.timestamps
    end
  end
end
