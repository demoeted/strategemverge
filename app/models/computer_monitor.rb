class ComputerMonitor < ApplicationRecord
<<<<<<< HEAD
    belongs_to :orderproducts
=======
    belongs_to :orderproduct

    validates :name, :screen_size, :resolution, :refresh_rate, :aspect_ratio, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :response_time, :screen_size, numericality: { only_numeric: true }
    validates :response_time, numericality: { in: 0.01..15 }
    validates :refresh_rate, numericality: { only_integer: true }
    validates :refresh_rate, numericality: { in: 60..600 }
>>>>>>> b025189a390599af11793a8166a97c3c57562f75
end
