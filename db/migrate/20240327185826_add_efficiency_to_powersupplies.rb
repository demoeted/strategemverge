class AddEfficiencyToPowersupplies < ActiveRecord::Migration[7.1]
  def change
    add_column :powersupplies, :efficiency, :string
  end
end
