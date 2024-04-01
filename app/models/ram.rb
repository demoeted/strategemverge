class Ram < ApplicationRecord
    belongs_to :orderproduct, optional: true
    belongs_to :categories, optional: true


    validates :name, :speed, :color, :first_word_latency, :cas_latency, presence: true
    validates :name, uniqueness: true, length: { maximum: 100 }
    validates :price, :price_per_gb, :first_word_latency, numericality: { only_numeric: true }
    validates :cas_latency, numericality: { only_numeric: true }
    validates :speed, :color, length: { maximum: 30 }

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "price", "speed", "price_per_gb", "color", "first_word_latency", "cas_latency", "updated_at"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["orderproduct"]
    end
end
