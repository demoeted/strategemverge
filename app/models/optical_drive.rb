class OpticalDrive < ApplicationRecord
    belongs_to :orderproduct

    validates :name, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, numericality: { only_numeric: true }
    validates :bd, :dvd, :cd, :bd_write, :dvd_write, :cd_write, numericality: { only_integer: true }
end
