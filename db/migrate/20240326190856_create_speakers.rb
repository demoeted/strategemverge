class CreateSpeakers < ActiveRecord::Migration[7.1]
  def change
    create_table :speakers do |t|
      t.string :name
      t.decimal :price
      t.decimal :configuration
      t.decimal :wattage
      t.string :frequency
      t.string :color

      t.timestamps
    end
  end
end
