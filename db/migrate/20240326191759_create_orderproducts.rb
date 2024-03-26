class CreateOrderproducts < ActiveRecord::Migration[7.1]
  def change
    create_table :orderproducts do |t|
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
