class CreateMotherboards < ActiveRecord::Migration[7.1]
  def change
    create_table :motherboards do |t|
      t.string :name
      t.decimal :price
      t.string :socket
      t.string :form_factor
      t.integer :max_memory
      t.integer :memory_slots
      t.string :color

      t.timestamps
    end
  end
end
