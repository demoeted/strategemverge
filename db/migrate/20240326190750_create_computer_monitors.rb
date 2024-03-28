class CreateComputerMonitors < ActiveRecord::Migration[7.1]
  def change
    create_table :computer_monitors do |t|
      t.string :name
      t.decimal :price
      t.decimal :screen_size
      t.string :resolution
      t.integer :refresh_rate
      t.decimal :response_time
      t.string :panel_type
      t.string :aspect_ratio

      t.timestamps
    end
  end
end
