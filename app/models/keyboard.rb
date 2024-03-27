class Keyboard < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :style, :tenkeyless, :connection_type, :color, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :style, :backlit_color, :color, length: { maximum: 30 }
    validates :switches, length: { maximum: 100 }
    validates :connection_type, length: { maximum: 50 }
end
