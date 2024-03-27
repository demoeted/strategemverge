class AddCasetypetoCases < ActiveRecord::Migration[7.1]
  def change
    add_column :cases, :casetype, :string
  end
end
