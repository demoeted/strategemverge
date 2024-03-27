class Mouse < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :tracking_method, :connection_type, :color, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :tracking_method, :connection_type, :hand_orientation, :color, length: { maximum: 30 }
    validates :max_dpi, numericality: { only_integer: true }
end
