class CreateRams < ActiveRecord::Migration[7.1]
  def change
    create_table :rams do |t|
      t.string :name
      t.decimal :price
      t.string :speed
      t.decimal :price_per_gb
      t.string :color
      t.decimal :first_word_latency
      t.integer :cas_latency

      t.timestamps
    end
  end
end
