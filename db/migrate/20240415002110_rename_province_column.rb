class RenameProvinceColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :province, :province_id
  end
end
