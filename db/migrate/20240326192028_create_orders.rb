class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.date :date_purchased

      t.timestamps
    end
  end
end
