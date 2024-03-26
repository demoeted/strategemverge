class CreateKeyboards < ActiveRecord::Migration[7.1]
  def change
    create_table :keyboards do |t|
      t.string :name
      t.decimal :price
      t.string :style
      t.string :switches
      t.string :backlit_color
      t.boolean :tenkeyless
      t.string :connection_type
      t.string :color

      t.timestamps
    end
  end
end
