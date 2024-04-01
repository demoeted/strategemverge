class Powersupply < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :category, optional: true


    validates :name, :powersupplytype, :wattage, :modular, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :powersupplytype, :efficiency, :modular, :color, length: { maximum: 30 }
    validates :wattage, numericality: { only_integer: true }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "powersupplytype", "efficiency", "wattage", "modular", "color", "category_id", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct", "category"]
    end
end
