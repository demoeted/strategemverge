class AddPriceToComputerMonitors < ActiveRecord::Migration[7.1]
  def change
    add_column :computer_monitors, :price, :decimal
  end
end
