class CreateVideocards < ActiveRecord::Migration[7.1]
  def change
    create_table :videocards do |t|
      t.string :name
      t.decimal :price
      t.string :chipset
      t.integer :memory
      t.integer :core_clock
      t.integer :boost_clock
      t.string :color
      t.integer :length

      t.timestamps
    end
  end
end
