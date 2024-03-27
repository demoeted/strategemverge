class CaseFan < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :size, :color, :pwm, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :size, numericality: { only_integer: true }
    validates :size, numericality: { in: 40..200 }
end
