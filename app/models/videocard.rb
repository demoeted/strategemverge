class Videocard < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :chipset, :memory, :core_clock, :boost_clock, :color, :length, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :chipset, :color, length: { maximum: 30 }
    validates :memory, :core_clock, :boost_clock, :length, numericality: { only_integer: true }
end
