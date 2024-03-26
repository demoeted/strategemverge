class CreateMice < ActiveRecord::Migration[7.1]
  def change
    create_table :mice do |t|
      t.string :name
      t.decimal :price
      t.string :tracking_method
      t.string :connection_type
      t.integer :max_dpi
      t.string :hand_orientation
      t.string :color

      t.timestamps
    end
  end
end
