class ComputerMonitor < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :screen_size, :resolution, :refresh_rate, :aspect_ratio, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :response_time, :screen_size, numericality: { only_numeric: true }
    validates :response_time, numericality: { in: 0.01..15 }
    validates :refresh_rate, numericality: { only_integer: true }
    validates :refresh_rate, numericality: { in: 60..600 }
end
