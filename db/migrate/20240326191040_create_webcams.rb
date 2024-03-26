class CreateWebcams < ActiveRecord::Migration[7.1]
  def change
    create_table :webcams do |t|
      t.string :name
      t.decimal :price
      t.string :resolutions
      t.string :connection
      t.string :focus_type
      t.string :os
      t.decimal :fov

      t.timestamps
    end
  end
end
