class CreateCaseFans < ActiveRecord::Migration[7.1]
  def change
    create_table :case_fans do |t|
      t.string :name
      t.decimal :price
      t.integer :size
      t.string :color
      t.integer :rpm
      t.boolean :pwm

      t.timestamps
    end
  end
end
