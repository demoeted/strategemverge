class CreateAboutUs < ActiveRecord::Migration[7.1]
  def change
    create_table :about_us do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
