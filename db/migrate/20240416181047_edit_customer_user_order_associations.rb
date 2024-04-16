class EditCustomerUserOrderAssociations < ActiveRecord::Migration[7.1]
  def change
    remove_column :orders, :customer_id
    add_reference :orders, :user, null: false, foreign_key: true  end
end
