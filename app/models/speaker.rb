class Speaker < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :configuration, :wattage, :frequency, :color, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :configuration, :wattage, numericality: { only_numeric: true }
    validates :frequency, :color, length: { maximum: 30 }
    validates_numericality_of :configuration, precision: 2
end
