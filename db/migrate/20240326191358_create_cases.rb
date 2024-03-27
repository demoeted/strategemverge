class CreateCases < ActiveRecord::Migration[7.1]
  def change
    create_table :cases do |t|
      t.string :name
      t.decimal :price
      t.string :casetype
      t.string :color
      t.string :psu
      t.string :side_panel

      t.timestamps
    end
  end
end
