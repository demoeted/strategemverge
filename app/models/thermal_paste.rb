class ThermalPaste < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :amount, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :amount, numericality: { only_numeric: true }
end
