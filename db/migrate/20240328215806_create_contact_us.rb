class CreateContactUs < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_us do |t|
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
