class CaseFan < ApplicationRecord
    belongs_to :orderproduct
<<<<<<< HEAD
=======

    validates :name, :size, :color, :pwm, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :size, numericality: { only_integer: true }
    validates :size, numericality: { in: 40..200 }
>>>>>>> b025189a390599af11793a8166a97c3c57562f75
end
