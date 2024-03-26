class CreateOpticalDrives < ActiveRecord::Migration[7.1]
  def change
    create_table :optical_drives do |t|
      t.string :name
      t.decimal :price
      t.integer :bd
      t.integer :dvd
      t.integer :cd
      t.integer :bd_write
      t.integer :dvd_write
      t.integer :cd_write

      t.timestamps
    end
  end
end
