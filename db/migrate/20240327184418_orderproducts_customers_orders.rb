class OrderproductsCustomersOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orderproducts, :order, null: false, foreign_key: { to_table: :orders }
    add_reference :orders, :customer, null: false, foreign_key: { to_table: :customers }
  end
end
