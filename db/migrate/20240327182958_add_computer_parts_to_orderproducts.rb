class AddComputerPartsToOrderproducts < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :orderproducts, :case_fans, column: :product_id
    add_foreign_key :orderproducts, :case, column: :product_id
    add_foreign_key :orderproducts, :computer_monitors, column: :product_id
    add_foreign_key :orderproducts, :cpus, column: :product_id
    add_foreign_key :orderproducts, :keyboards, column: :product_id
    add_foreign_key :orderproducts, :motherboards, column: :product_id
    add_foreign_key :orderproducts, :mice, column: :product_id
    add_foreign_key :orderproducts, :optical_drives, column: :product_id
    add_foreign_key :orderproducts, :powersupplies, column: :product_id
    add_foreign_key :orderproducts, :rams, column: :product_id
    add_foreign_key :orderproducts, :speakers, column: :product_id
    add_foreign_key :orderproducts, :thermal_pastes, column: :product_id
    add_foreign_key :orderproducts, :videocards, column: :product_id
    add_foreign_key :orderproducts, :webcams, column: :product_id
  end
end
