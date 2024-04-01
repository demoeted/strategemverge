class AddCategoriesTwo < ActiveRecord::Migration[7.1]
  def change
    add_reference :case_fans, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :cases, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :computer_monitors, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :cpus, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :customers, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :keyboards, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :mice, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :motherboards, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :optical_drives, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :powersupplies, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :rams, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :speakers, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :thermal_pastes, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :videocards, :category, null: false, foreign_key: { to_table: :categories }
    add_reference :webcams, :category, null: false, foreign_key: { to_table: :categories }
  end
end
