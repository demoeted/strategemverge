class Powersupply < ApplicationRecord
    belongs_to :orderproduct
<<<<<<< HEAD
=======

    validates :name, :powersupplytype, :wattage, :modular, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :powersupplytype, :efficiency, :modular, :color, length: { maximum: 30 }
    validates :wattage, numericality: { only_integer: true }
>>>>>>> b025189a390599af11793a8166a97c3c57562f75
end
