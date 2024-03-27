class Ram < ApplicationRecord
    belongs_to :orderproduct

    validates :name, :speed, :color, :first_word_latency, :cas_latency, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :price_per_gb, :first_word_latency, numericality: { only_numeric: true }
    validates :cas_latency, numericality: { only_numeric: true }
    validates :speed, :color, length: { maximum: 30 }
end
