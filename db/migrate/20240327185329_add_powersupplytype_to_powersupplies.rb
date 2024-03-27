class AddPowersupplytypeToPowersupplies < ActiveRecord::Migration[7.1]
  def change
    add_column :powersupplies, :powersupplytype, :string
  end
end
